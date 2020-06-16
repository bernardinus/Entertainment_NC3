//
//  SettingViewController.swift
//  NC3
//
//  Created by Dimas Pagam on 14/06/20.
//  Copyright © 2020 Dimas Pagam. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var musicSwitch: UISwitch!


    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       
                        
    }

    @IBAction func Home()
    {
        let vc = storyboard?.instantiateViewController(identifier: "Home") as! HomePageViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    @IBAction func playAudio(_sender:UISwitch)
    {
        if _sender.isOn == true{
            
            MusicManager.shared.player?.play()
        }
        else
        {
            MusicManager.shared.player?.stop()
        }
    }

}
