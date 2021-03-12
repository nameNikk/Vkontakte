//
//  newsFeedTableViewCell.swift
//  VK
//
//  Created by Никита Макаренко on 11.03.2021.
//

import UIKit

class newsFeedTableViewCell: UITableViewCell {

    
    @IBOutlet weak var newsFeedLabel: UILabel!
    
    @IBOutlet weak var newsFeedImg: UIImageView!
    
    @IBOutlet weak var btnLike: UIButton!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func btnLikeClick(_ sender: Any) {
    

        if btnLike.tag == 0{
            btnLike.setImage(UIImage(named: "heartEmpty"), for: .normal)
            btnLike.tag = 1
        } else{
            btnLike.setImage(UIImage(named: "likeFull"), for: .normal)
            btnLike.tag = 0
        }
    }
    
    

}
