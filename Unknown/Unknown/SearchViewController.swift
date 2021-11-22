//
//  SearchViewController.swift
//  Unknown
//
//  Created by kimsian on 2021/11/22.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        setSerchBar()
        // Do any additional setup after loading the view.
    }
    
    func setSerchBar() {
        
        searchBar.setImage(UIImage(), for: UISearchBar.Icon.search, state: .normal)
        self.navigationItem.rightBarButtonItem?.tintColor = UIColor.black
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

}
