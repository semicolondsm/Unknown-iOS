//
//  MypageViewController.swift
//  Unknown
//
//  Created by kimsian on 2021/11/23.
//

import UIKit

class MypageViewController: UIViewController {
    
    @IBOutlet weak var changePWBtn: UIButton!
    @IBOutlet weak var profileImgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://avatars.githubusercontent.com/u/81298254?v=4")
        profileImgView.load(url: url!)
        changePWBtn.setTitle("비밀번호 변경", for: .normal)
        let aa = NSMutableAttributedString(string: changePWBtn.currentTitle ?? "")
        let underLine = NSUnderlineStyle.thick.rawValue
        aa.addAttribute(NSMutableAttributedString.Key.underlineStyle,
                        value: underLine,
                        range: NSRange(location: 0, length: changePWBtn.currentTitle!.count))
        changePWBtn.setAttributedTitle(aa, for: .normal)
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
    @IBAction func changepwPush(_ sender: UIButton) {
            let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "changePW")
            self.navigationController?.pushViewController(pushVC!, animated: true)
        }

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
   
