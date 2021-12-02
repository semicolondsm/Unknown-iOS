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
    @IBOutlet weak var signupBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginView.layer.maskedCorners = .layerMinXMinYCorner
        let aa = NSMutableAttributedString(string: signupBtn.currentTitle ?? "")
        let underLine = NSUnderlineStyle.thick.rawValue
        aa.addAttribute(NSMutableAttributedString.Key.underlineStyle,
                        value: underLine,
                        range: NSRange(location: 0, length: signupBtn.currentTitle!.count))
        signupBtn.setAttributedTitle(aa, for: .normal)
        
        // Do any additional setup after loading the view.
    }
    
}
