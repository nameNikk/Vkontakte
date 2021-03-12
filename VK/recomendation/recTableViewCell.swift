//
//  recTableViewCell.swift
//  VK
//
//  Created by Никита Макаренко on 11.03.2021.
//

import UIKit

class recTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var recImg: UIImageView!
    @IBOutlet weak var recNameGroup: UILabel!
    @IBOutlet weak var recDiscription: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
        
        recImg.layer.cornerRadius = recImg.frame.width/2
        recImg.layer.masksToBounds = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
