//
//  File.swift
//  ABC5besic
//
//  Created by Dimas Pagam on 15/06/20.
//  Copyright © 2020 Dimas Pagam. All rights reserved.
//

import Foundation
import AVFoundation

enum Sound
{
    case sound10s
    case sound20s
    case sound30s
    case correct
    case button
    case wrong1
    case wrong2
    case background
}

class MusicManager
{
    public var player:AVAudioPlayer?
    static var shared = MusicManager()
    
    var sfx:[Sound:AVAudioPlayer] = [:]
    
    var currentTimerSFX:Sound = .sound10s
    
    init()
    {
        do{
            try AVAudioSession.sharedInstance().setMode(.default)
            try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)


            
            
            
        }
        catch
        {
            print("error when loading sound")
        }
    }
    
    func preloadSound()
    {
        do
        {
            try loadSound(sfxType: .sound10s, fileName: "sound10s")
            try loadSound(sfxType: .sound20s, fileName: "sound20s")
            try loadSound(sfxType: .sound30s, fileName: "sound30s")
            try loadSound(sfxType: .correct, fileName: "correct")
            try loadSound(sfxType: .wrong1, fileName: "wrong1")
            try loadSound(sfxType: .wrong2, fileName: "wrong2")
            try loadSound(sfxType: .button, fileName: "button")
            try loadSound(sfxType: .background, fileName: "bg")
        }
        catch{
            print("\(error) while preloadSound")
        }
        
    }
    
    var bgmVolume:Float = 0.025
    
    func playBackground()
    {
        sfx[.background]?.volume = bgmVolume
        sfx[.background]?.numberOfLoops = -1
        sfx[.background]?.play()
    }
    
    func muteBackground()
    {
        sfx[.background]?.setVolume(0, fadeDuration: 1)
    }
    
    func resumeBackground(volume:Float = 0)
    {
        
        sfx[.background]?.setVolume(volume == 0 ? bgmVolume : volume , fadeDuration: 1)
    }
    
    
    func loadSound(sfxType:Sound, fileName:String) throws
    {
        guard let urlString = Bundle.main.path(forResource: fileName, ofType: "mpeg") else {return}
        do
        {
            sfx[sfxType] = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
            sfx[sfxType]?.prepareToPlay()
            
        }
        catch
        {
            print("error when loading sound \(error)")
        }
    }
    
    func playSFX(_ sfxType:Sound)
    {
        switch sfxType {
            case .sound10s: currentTimerSFX = .sound10s
            case .sound20s: currentTimerSFX = .sound20s
            case .sound30s: currentTimerSFX = .sound30s
            default:
                currentTimerSFX = .sound10s
        }
        print("play \(sfxType) \(String(describing: sfx[sfxType]?.play()))")
    }
    
    func StopSFX(_ sfxType:Sound)
    {
        print("Stop \(sfxType) \(String(describing: sfx[sfxType]?.stop()))")
    }
    
    func stopTimerSFX()
    {
        print("Stop \(currentTimerSFX) \(String(describing: sfx[currentTimerSFX]?.stop()))")
    }
    
    
}
