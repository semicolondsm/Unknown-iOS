//
//  WriteViewController.swift
//  Unknown
//
//  Created by kimsian on 2021/11/22.
//

import UIKit
import DropDown

class WriteViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var languageView: UIView!
    @IBOutlet weak var btn: UIButton!
    
    private let dropdown: DropDown = {
        let dropDown = DropDown()
        dropDown.dataSource = ["HTML, XML", "Bash", "C++", "C#", "CSS", "Markdown", "Objective-C", "Ruby", "Go", "Java", "JavaScript", "JSON", "Kotlin", "Makefile", "Python", "Python REPL", "SQL", "Swift", "YAML", "TypeScript"]
        dropDown.bottomOffset = CGPoint(x: 0, y:(dropDown.anchorView?.plainView.bounds.height) ?? 100)
        dropDown.width = 137
        dropDown.textFont = UIFont.systemFont(ofSize: 14)
        dropDown.cornerRadius = 10
        return dropDown
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contentView.layer.addBorder([.bottom], color: UIColor.gray, width: 1)
        
    }
    
    @IBAction private func dropBtn(_ sender: UIButton) {
        dropdown.show()
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
