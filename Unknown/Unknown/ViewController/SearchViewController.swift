//
//  SearchViewController.swift
//  Unknown
//
//  Created by kimsian on 2021/11/22.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var searchResultBtn: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setSerchBar()
        // Do any additional setup after loading the view.
        self.searchBar.searchBarStyle = .minimal

    }
    
    func setSerchBar() {
        
        searchBar.setImage(UIImage(), for: UISearchBar.Icon.search, state: .normal)
        self.navigationItem.rightBarButtonItem?.tintColor = UIColor.black
        if let textfield = searchBar.value(forKey: "searchField") as? UITextField {
            searchBar.searchTextField.clearButtonMode = .never
        }
       
    }
    @IBAction func modalPresent(_ sender: UIButton) {
            let newVC = self.storyboard?.instantiateViewController(identifier: "pushVC")
            newVC?.modalTransitionStyle = .coverVertical
            newVC?.modalPresentationStyle = .automatic
            self.present(newVC!, animated: true, completion: nil)
        }
//    func DateType2String() -> String{
//
//        let current = Date()
//        let formatter = DateFormatter()
//        formatter.locale = Locale(identifier: "ko_kr")
//        formatter.timeZone = TimeZone(abbreviation: "KST")
//        formatter.dateFormat = "yyyy년 MM월 dd일 HH:mm"
//        return formatter.string(from: current)
//    }
    
    @IBAction func buttonOK(_ sender: UIButton) {
        searchResultBtn.text = searchBar.text!
        }
}
