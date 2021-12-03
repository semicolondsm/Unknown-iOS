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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
