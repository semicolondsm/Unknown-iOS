//
//  MainTableViewCell.swift
//  Unknown
//
//  Created by kimsian on 2021/11/23.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var postView: UIView!
    @IBOutlet weak var codeView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
