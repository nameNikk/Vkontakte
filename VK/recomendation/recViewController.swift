//
//  recViewController.swift
//  VK
//
//  Created by Никита Макаренко on 11.03.2021.
//

import UIKit

class recViewController: UIViewController {
    
    
    var recArray = [Community(group: "News", discription: "all major news", groupImg: "news"),
                    Community(group: "Cars", discription: "chic cars", groupImg: "cars"),
                    Community(group: "Books", discription: "great books", groupImg: "books")
    ]
    

    @IBOutlet weak var recTableView: UITableView!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        recTableView.delegate = self
        recTableView.dataSource = self

        
    }
    
}


extension recViewController: UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let   cell = recTableView.dequeueReusableCell(withIdentifier: "recCell", for: indexPath) as? recTableViewCell
        let rec = recArray[indexPath.row]
        
        cell?.recNameGroup.text = rec.group
        cell?.recDiscription.text = rec.discription
        cell?.recImg.image = UIImage(named: rec.groupImg)
        
        return cell!
    }
    
    
    
}
