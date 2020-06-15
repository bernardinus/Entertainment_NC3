//
//  File.swift
//  ABC5besic
//
//  Created by Dimas Pagam on 15/06/20.
//  Copyright © 2020 Dimas Pagam. All rights reserved.
//

import Foundation
import AVFoundation
class Music
{
    public var player:AVAudioPlayer?
    static var shared = Music()
    init() {
         let urlString = Bundle.main.path(forResource: "game music", ofType: "mp3")
                do{
                    try AVAudioSession.sharedInstance().setMode(.default)
                    try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                    
                    guard let urlString = urlString else{
                        return
                    }
                    
                    player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                    
        //                guard let player = player else {
        //                    return
        //                }
                    
                }
                    catch
                        {
                            print("error")
                        }
    }
}
