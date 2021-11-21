//
//  LoginViewController.swift
//  Unknown
//
//  Created by kimsian on 2021/11/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginView.layer.maskedCorners = .layerMinXMinYCorner
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
