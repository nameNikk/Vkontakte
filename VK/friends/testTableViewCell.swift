//
//  testTableViewCell.swift
//  VK
//
//  Created by Никита Макаренко on 09.03.2021.
//

import UIKit

class testTableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var testImg: UIImageView!

    @IBOutlet weak var testLabel: UILabel!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        testImg.layer.cornerRadius = testImg.frame.width/2
        testImg.layer.masksToBounds = true
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}
