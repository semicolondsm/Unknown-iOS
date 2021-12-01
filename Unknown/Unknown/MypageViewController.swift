//
//  MypageViewController.swift
//  Unknown
//
//  Created by kimsian on 2021/11/23.
//

import UIKit

class MypageViewController: UIViewController {
    
    @IBOutlet weak var profileImgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://avatars.githubusercontent.com/u/81298254?v=4")
        profileImgView.load(url: url!)
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

extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {       DispatchQueue.main.async {
                            self?.image = image
                        }
                    }
                }
            }
        }
    }

