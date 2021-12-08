//
//  SignupViewController.swift
//  Unknown
//
//  Created by kimsian on 2021/11/21.
//

import UIKit

class SignupViewController: UIViewController {

    @IBOutlet weak var signupView: UIView!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    @IBOutlet weak var ghTextField: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var idView: UIView!
    @IBOutlet weak var pwView: UIView!
    @IBOutlet weak var ghView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loginBtn.setTitle("로그인 하기", for: .normal)
        
        signupView.layer.maskedCorners = .layerMinXMinYCorner
        let aa = NSMutableAttributedString(string: loginBtn.currentTitle ?? "")
        let underLine = NSUnderlineStyle.thick.rawValue
        aa.addAttribute(NSMutableAttributedString.Key.underlineStyle,
                        value: underLine,
                        range: NSRange(location: 0, length: loginBtn.currentTitle!.count))
        loginBtn.setAttributedTitle(aa, for: .normal)
        // Do any additional setup after loading the view.
    }
    
    private func signup(email: String, password: String, githubId: String) {
        HTTPClient().post(url: AuthAPI.signup.path(), params: ["email": email, "password": password, "githubId": githubId], header: Header.tokenIsEmpty.header())
            .responseJSON(completionHandler: { res in
                switch res.response?.statusCode {
                case 201 :
                    print("회원가입 성공")
                    
                    guard let vc = self.storyboard? .instantiateViewController(withIdentifier: "login") else {return}
                    
                    self.navigationController?.popViewController(animated: true)
                    
                default:
                    print(res.response?.statusCode ?? 0)
              
                }
        })
    }

}
