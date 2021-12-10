//
//  ChangePasswordViewController.swift
//  Unknown
//
//  Created by kimsian on 2021/11/23.
//

import UIKit

class ChangePasswordViewController: UIViewController {

    @IBOutlet weak var passwordTxtField: UITextField!
    @IBOutlet weak var newpasswordTxtField: UITextField!
    @IBOutlet weak var checkPasswordTxtField: UITextField!
    @IBOutlet weak var pwView: UIView!
    @IBOutlet weak var newpwView: UIView!
    @IBOutlet weak var checkpwView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    private func changePW(email: String, password: String) {
        HTTPClient().post(url: AuthAPI.login.path(), params: ["email": email, "password": password], header: Header.tokenIsEmpty.header()).responseJSON(completionHandler: { res in
            print(res.response?.statusCode ?? 0)
            switch res.response?.statusCode {
            case 200 :
                do {
                    let model = try JSONDecoder().decode(TokenModel.self, from: res.data!)
                    
                    Token.token = model.access_token
                    Token.refreshToken = model.refresh_token
                    
                    guard let vc = self.storyboard?
                            .instantiateViewController(withIdentifier: "community") else {return}
                    
                    self.navigationController?.pushViewController(vc, animated: true)
                }
                catch {
                    print(error)
                }
                
            case 400:
                print("요청 형식을 식별할 수 없음")
            case 401:
                print("로그인이 되어 있지 않음")
            case 403:
                print("토큰 값이 유효하지 않음")
            default:
                print(res.response?.statusCode ?? 0)
            }
        })
    }
}
