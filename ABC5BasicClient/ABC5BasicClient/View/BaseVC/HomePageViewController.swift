//
//  HomePageViewController.swift
//  NC3
//
//  Created by Dimas Pagam on 14/06/20.
//  Copyright © 2020 Dimas Pagam. All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController {

    
    @IBOutlet weak var GameConfig: UIButton!
    @IBOutlet weak var Music: UIButton!
    @IBOutlet weak var Ability: UIButton!
    @IBOutlet weak var NoSoundButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        MusicManager.shared.preloadSound()
        MusicManager.shared.playBackground()
        
    }
    
    
    

    
  @IBAction func GameSet()
  {
    let vc = storyboard?.instantiateViewController(identifier: "GameSet") as! GameSettingViewController
    vc.modalPresentationStyle = .fullScreen
    present(vc, animated: true)
    }
    
    @IBAction func unwindToHome(_ sender: UIStoryboardSegue)
    {
        if let source = sender.source as? SettingViewController
        {
            print("from setting")
        }
        else if let source = sender.source as? GameSettingViewController
        {
            print("from game setting")
        }
        else if let source = sender.source as? AbilityViewController
        {
            print("from ability")
        }
    }
    
    @IBAction func PlayButton(_ sender: Any) {
        MusicManager.shared.playSFX(.button)
        performSegue(withIdentifier: "showGameMode", sender: nil)
    }
    
    @IBAction func GameConfig(_ sender: Any)
    {
        MusicManager.shared.playSFX(.button)
        performSegue(withIdentifier: "showGameSetting", sender: nil)
    }
    
    @IBAction func MusicButton(_ sender: Any)
    {
        MusicManager.shared.playSFX(.button)
        
//        MusicManager.shared.muteBackground()
        
        print("music button")
        Music.isEnabled = false
        NoSoundButton.isEnabled = true
        NoSoundButton.isHidden = false
    }
    
    @IBAction func AbilityButton(_ sender: Any)
    {
        MusicManager.shared.playSFX(.button)
        performSegue(withIdentifier: "showAbility", sender: nil)
    }
    @IBAction func NoMusicButton(_ sender: Any)
    {
        Music.isEnabled = true
        NoSoundButton.isEnabled = false
        NoSoundButton.isHidden = true
        
        print("no music btn")
    }
}

