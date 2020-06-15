//
//  HostViewController.swift
//  ABC5BasicClient
//
//  Created by Aldo on 13/06/20.
//  Copyright © 2020 ADA. All rights reserved.
//

import UIKit

class HostViewController: UIViewController {

    @IBOutlet weak var profileImages: UICollectionView!
    
    @IBOutlet weak var roomID: UILabel!
    
    func random() -> String {
        var result = ""
        repeat {
            result = String(format:"%04d", arc4random_uniform(10000) )
        } while result.count < 4 || Int(result)! < 1000
        print(result)
        return result
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    //roomID = random()

    
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

