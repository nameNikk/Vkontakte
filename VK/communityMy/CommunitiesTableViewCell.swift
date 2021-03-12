//
//  CommunitiesTableViewCell.swift
//  VK
//
//  Created by Никита Макаренко on 11.03.2021.
//

import UIKit

class CommunitiesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var comImg: UIImageView!
    
    @IBOutlet weak var comNameGroup: UILabel!
    
    @IBOutlet weak var comDisGroup: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        comImg.layer.cornerRadius = comImg.frame.width/2
        comImg.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
