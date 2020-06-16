//
//  HostViewController.swift
//  ABC5BasicClient
//
//  Created by Aldo on 13/06/20.
//  Copyright © 2020 ADA. All rights reserved.
//

import UIKit

class HostViewController: UIViewController {
    
    @IBOutlet weak var roomID: UILabel!
    @IBOutlet weak var avatarPic: UIImageView!
    
    var avatarPicArray: [UIImage] = [#imageLiteral(resourceName: "boy1"),#imageLiteral(resourceName: "girl3"),#imageLiteral(resourceName: "girl4"),#imageLiteral(resourceName: "girl1"),#imageLiteral(resourceName: "boy3"),#imageLiteral(resourceName: "boy2"),#imageLiteral(resourceName: "boy4"),#imageLiteral(resourceName: "girl2")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    

    
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

