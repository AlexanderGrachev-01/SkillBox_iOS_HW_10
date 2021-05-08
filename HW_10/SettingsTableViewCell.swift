//
//  SettingsTableViewCell.swift
//  HW_10
//
//  Created by Александр Грачев on 08.05.2021.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var SettingsImageView: UIImageView!
    
    @IBOutlet weak var SettingsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }

}
