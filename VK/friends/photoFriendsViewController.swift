//
//  photoFriendsViewController.swift
//  VK
//
//  Created by Никита Макаренко on 10.03.2021.
//

import UIKit

class photoFriendsViewController: UIViewController {
    
    
    @IBOutlet weak var photoFriendsImg: UIImageView!
    
    var image: UIImage? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        
        photoFriendsImg.image = image
        
    }
    

  

}
