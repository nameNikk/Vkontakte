//
//  ViewController.swift
//  VK
//
//  Created by Никита Макаренко on 01.03.2021.
//

import UIKit

class loginController: UIViewController {
    
    
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var username: UITextField!
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.navigationController?.navigationBar.isHidden = true
        
    }
    
    

    @IBAction func enter(_ sender: Any) {
        
        if password.text == "" && username.text == ""{
            self.performSegue(withIdentifier: "segueTB", sender: self)}
        
                else {
                    let alert = UIAlertController(title: "error", message: "Check your username or password", preferredStyle: .alert)
                    let action = UIAlertAction (title: "ok", style: .default, handler: nil)
                    
                    alert.addAction(action)
                    present(alert, animated: true, completion: nil)
                }
            
    
        }
    }
    


