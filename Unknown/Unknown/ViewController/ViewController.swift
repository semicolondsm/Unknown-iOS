//
//  ViewController.swift
//  Unknown
//
//  Created by kimsian on 2021/11/09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var signupBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loginBtn.clipsToBounds = true
       
    }
    
    @IBAction func navPush(_ sender: UIButton) {
            let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "LoginVC")
            self.navigationController?.pushViewController(pushVC!, animated: true)
        }
    
    @IBAction func naviPush(_ sender: UIButton) {
            let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "SignUpVC")
            self.navigationController?.pushViewController(pushVC!, animated: true)
        }
}

