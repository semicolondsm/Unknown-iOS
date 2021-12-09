//
//  LoginViewController.swift
//  Unknown
//
//  Created by kimsian on 2021/11/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var idView: UIView!
    @IBOutlet weak var pwView: UIView!
    @IBOutlet weak var signupBtn: UIButton!
    @IBOutlet weak var idLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signupBtn.setTitle("회원가입 하기", for: .normal)
        
        loginView.layer.maskedCorners = .layerMinXMinYCorner
        let aa = NSMutableAttributedString(string: signupBtn.currentTitle ?? "")
        let underLine = NSUnderlineStyle.thick.rawValue
        aa.addAttribute(NSMutableAttributedString.Key.underlineStyle,
                        value: underLine,
                        range: NSRange(location: 0, length: signupBtn.currentTitle!.count))
        signupBtn.setAttributedTitle(aa, for: .normal)
        
        // Do any additional setup after loading the view.
    }
    private func login(email: String, password: String) {
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
            case 404:
                print("id를 찾을 수 없음")
            default:
                print(res.response?.statusCode ?? 0)
            }
        })
    }
    @IBAction func changeVCPush(_ sender: UIButton) {
            let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "SignUpVC")
            self.navigationController?.pushViewController(pushVC!, animated: true)
        }
}
