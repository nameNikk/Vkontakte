//
//  communitiesViewController.swift
//  VK
//
//  Created by Никита Макаренко on 11.03.2021.
//

import UIKit

class communitiesViewController: UIViewController {
    
    
    var comArray = [Community(group: "Sports", discription: "different sports", groupImg: "sports"),
                    Community(group: "Space", discription: "many stars", groupImg: "space"),
                    Community(group: "Hockey", discription: "best hockey games", groupImg: "hockey")
                    
    ]
    
    
    
    @IBOutlet weak var comTableView: UITableView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        comTableView.delegate = self
        comTableView.dataSource = self
    }
    

  
}

extension communitiesViewController: UITableViewDataSource,UITableViewDelegate{
    

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let  cell = comTableView.dequeueReusableCell(withIdentifier: "comCell",for: indexPath) as? CommunitiesTableViewCell
        
        let com = comArray[indexPath.row]
        
        cell?.comNameGroup.text = com.group
        cell?.comDisGroup.text = com.discription
        cell?.comImg.image = UIImage(named: com.groupImg)
        
        return cell!
        
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            comArray.remove(at: indexPath.row)
            comTableView.reloadData()
        }
    }

    
    
}
