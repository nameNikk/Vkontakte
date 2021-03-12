//
//  newsFeedViewController.swift
//  VK
//
//  Created by Никита Макаренко on 11.03.2021.
//

import UIKit

class newsFeedViewController: UIViewController {
    
    
    var newsArray = [ News(name: "Vikings", img: "vikingsNews"),
                      News(name: "Clothes", img: "clothesNews"),
                      News(name: "Hip-hop", img: "hip-hopNews"),
                      News(name: "History", img: "historyNews"),
                      News(name: "Investing", img: "investingNews"),
                      News(name: "Tattoo", img: "tattooNews")
                     
    
    ]

    @IBOutlet weak var newsFeedTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        newsFeedTableView.delegate = self
        newsFeedTableView.dataSource = self
        
    }
    


}


extension newsFeedViewController: UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = newsFeedTableView.dequeueReusableCell(withIdentifier: "newsCell",for: indexPath) as? newsFeedTableViewCell
        
        let news = newsArray[indexPath.row]
        
        cell?.newsFeedLabel.text = news.name
        cell?.newsFeedImg.image = UIImage(named: news.img)
        
        return cell!
    }
    
    
    
    
    
    
}
