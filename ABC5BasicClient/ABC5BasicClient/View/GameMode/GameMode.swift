//
//  GameMode.swift
//  ABC5BasicClient
//
//  Created by Aldo on 13/06/20.
//  Copyright © 2020 ADA. All rights reserved.
//

import UIKit

class GameMode: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func singleDevice(_ sender: UIButton) {
        performSegue(withIdentifier: "showGameplay", sender: nil)
    }
    
    @IBAction func multiDevice(_ sender: Any) {
        
        let alert = UIAlertController(title: "Choose One", message: "", preferredStyle: .alert)
        
        let hostAction = UIAlertAction(title: "Host the game", style: .default) { (action) in
            self.performSegue(withIdentifier: "showHost", sender: nil)
        }
        
        let joinAction = UIAlertAction(title: "Join game", style: .default) { (action) in
            self.performSegue(withIdentifier: "showJoin", sender: nil)
        }
        
        alert.addAction(hostAction)
        alert.addAction(joinAction)
        present(alert, animated: false, completion: nil)
    }
    
    @IBAction func unwindToGameMode(_ sender:UIStoryboardSegue)
    {
        
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
