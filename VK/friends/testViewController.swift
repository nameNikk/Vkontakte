//
//  testViewController.swift
//  VK
//
//  Created by Никита Макаренко on 09.03.2021.
//

import UIKit

class testViewController: UIViewController{
    
    @IBOutlet weak var testTableView: UITableView!
    
    
    var testArray =
        [friends(name: "David Beckham", image: "beck"),
         friends(name: "Elon Mask", image: "elon"),
         friends(name: "Aritz Aduriz", image: "aduriz"),
         friends(name: "Keira Knightley", image: "kira"),
         friends(name: "Marie Curie", image: "mary"),
         friends(name: "Richard Branson", image: "branson"),
         friends(name: "Salvador Dali", image: "dali"),
         friends(name: "Princess Diana", image: "diana"),
         friends(name: "Playboy Carty", image: "carty"),
         friends(name: "Didier Drogba", image: "drogba"),
         friends(name: "Antoine Griezmann", image: "griz"),
         friends(name: "Jack Ma", image: "ma"),
         friends(name: "Mark Zuckerberg", image: "mark"),
         friends(name: "Pablo Picasso", image: "pic"),
         friends(name: "Andrea Pirlo", image: "pirlo")
         
     
    ]
    
    var sections: [String:[friends]] = [:]
    var keys: [String] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        testTableView.dataSource = self
        testTableView.delegate = self
        
        
        testArray.forEach { contact in
            let firstLetter = String(contact.name.first!)
            if sections[firstLetter] != nil{
                sections[firstLetter]!.append(contact)
            } else {
                sections[firstLetter] = [contact]
            }
            
        }

        keys = Array(sections.keys).sorted(by: <)
    }
    

}


extension testViewController: UITableViewDataSource,UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return keys[section]
    }
    
    
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return keys
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let key = keys[section]
        let count = sections[key]!.count
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = testTableView.dequeueReusableCell(withIdentifier: "testCell") as! testTableViewCell
        let key = keys[indexPath.section]
        let contact = sections[key]![indexPath.row]
        
        cell.testLabel.text = contact.name
        cell.testImg.image = UIImage(named: contact.image)
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "deteil") as! photoFriendsViewController
        
        let key = keys[indexPath.section]
        let contact = sections[key]![indexPath.row]
        
        
        controller.image = UIImage(named: contact.image)
        show(controller, sender: nil)
        
//        vc?.image = UIImage(named: myFriends[indexPath.row])!
//
//        self.navigationController?.pushViewController(vc!, animated: true)

//
//        controller.
        
        
    }
    
    
}
