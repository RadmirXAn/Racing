//
//  ViewController.swift
//  Racing
//
//  Created by Радмир Юмагужин on 10.11.2020.
//

import UIKit

class ViewController: UIViewController {
    
    var playerName:String?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func closeAppAction(_ sender: Any) {
        exit(0)
    }
    
    @IBAction func settingAction(_ sender: Any) {
        
        let alert = UIAlertController(title: "Setting name", message: "Enter player nickname. \n Nickname is now: \(playerName)", preferredStyle: .alert)
        
        alert.addTextField { (UITextField) in
            UITextField.placeholder = "Player name"
        }
        
        let cancelAction = UIAlertAction(title: "Close", style: .cancel, handler: nil)

        let addction = UIAlertAction(title: "Confirm", style: .default) { (action) in
            let name = alert.textFields![0].text
            self.playerName = name
        }
        
        alert.addAction(cancelAction)
        alert.addAction(addction)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
}

