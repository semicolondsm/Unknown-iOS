//
//  WriteViewController.swift
//  Unknown
//
//  Created by kimsian on 2021/11/22.
//

import UIKit

class WriteViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var languageView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contentView.layer.addBorder([.bottom], color: UIColor.gray, width: 1)
        
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
