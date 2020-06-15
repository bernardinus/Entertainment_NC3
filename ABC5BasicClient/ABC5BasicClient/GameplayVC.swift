//
//  GameplayViewController.swift
//  ABC5BasicClient
//
//  Created by Bernardinus on 14/06/20.
//  Copyright © 2020 ADA. All rights reserved.
//

import Foundation
import UIKit
import Speech

class GameplayVC : UIViewController
{
    
    private let speechRecognizer = SFSpeechRecognizer(locale: Locale(identifier: "en-US"))!
    @IBOutlet weak var answerLabel: UILabel!
    private var recognitionRequest: SFSpeechAudioBufferRecognitionRequest?
    private var recognitionTask: SFSpeechRecognitionTask?
    private let audioEngine = AVAudioEngine()
 
    @IBOutlet weak var recordButton: UIImageView!
    var isTouched = false
    var isAuthorized = false
    var isChecked = false
    var timeLeft:Double = 0
    var startRecord:Bool = false
    
    @IBOutlet weak var roundLabel: UILabel!
    @IBOutlet weak var themeLabel: UILabel!
    @IBOutlet weak var letterLabel: UILabel!
    
    
    override func viewDidLoad() {
        GameManager.shared.setupGame(sessionTime: 10, theme: .Fruits, numberOfPlayer: 2)
        GameManager.shared.initializeSingleDeviceGame(players: ["A","B"])
    }
    
    override func viewDidAppear(_ animated: Bool) {
        speechRecognizer.delegate = self
        
        
        requestAuthorization()
        updateLayout()
    }
    
    func updateLayout()
    {
        
        roundLabel.text = "Round \(GameManager.shared.currentRounds)"
        themeLabel.text = "Theme: \(GameManager.shared.selectedTheme)"
        letterLabel.text = "Letter: \(GameManager.shared.selectedLetter)"
    }
    
    func requestAuthorization()
    {
        if(SFSpeechRecognizer.authorizationStatus() != .authorized)
        {
            SFSpeechRecognizer.requestAuthorization { authStatus in
                
                OperationQueue.main.addOperation {
                    self.updateRecordButtonImg()                    
                }
            }
        }
    }
    
    private func startRecording() throws {
        
        // Cancel the previous task if it's running.
        recognitionTask?.cancel()
        self.recognitionTask = nil
        
        // Configure the audio session for the app.
        let audioSession = AVAudioSession.sharedInstance()
        try audioSession.setCategory(.record, mode: .measurement, options: .duckOthers)
        try audioSession.setActive(true, options: .notifyOthersOnDeactivation)
        let inputNode = audioEngine.inputNode

        // Create and configure the speech recognition request.
        recognitionRequest = SFSpeechAudioBufferRecognitionRequest()
        guard let recognitionRequest = recognitionRequest else { fatalError("Unable to create a SFSpeechAudioBufferRecognitionRequest object") }
        recognitionRequest.shouldReportPartialResults = true
        
        // Keep speech recognition data on device
        if #available(iOS 13, *) {
            recognitionRequest.requiresOnDeviceRecognition = false
        }
        
        
        // Create a recognition task for the speech recognition session.
        // Keep a reference to the task so that it can be canceled.
        isChecked = false
        recognitionTask = speechRecognizer.recognitionTask(with: recognitionRequest) { result, error in
            var isFinal = false
            
            if let result = result
            {
                // Update the text view with the results.
                let answer = result.bestTranscription.formattedString
                self.answerLabel.text = answer
                isFinal = result.isFinal
                if !self.isChecked
                {
                    self.isChecked = true
                    print("Text \(answer)")
                    GameManager.shared.checkAnswer(answer: answer, timeleft: 10)
                }
            }
            
            if error != nil || isFinal {
                // Stop recognizing speech if there is a problem.
                self.audioEngine.stop()
                inputNode.removeTap(onBus: 0)

                self.recognitionRequest = nil
                self.recognitionTask = nil

                self.updateRecordButtonImg()
            }
        }

        // Configure the microphone input.
        let recordingFormat = inputNode.outputFormat(forBus: 0)
        inputNode.installTap(onBus: 0, bufferSize: 1024, format: recordingFormat) { (buffer: AVAudioPCMBuffer, when: AVAudioTime) in
            self.recognitionRequest?.append(buffer)
        }
        
        audioEngine.prepare()
        try audioEngine.start()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if !isTouched
        {
            isTouched = true
            let point = touches.first?.location(in: self.view)
            if(recordButton.frame.contains(point!))
            {
                updateRecordButtonImg()
                record()
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if isTouched
        {
            isTouched = false
            updateRecordButtonImg()
            record()
        }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if isTouched
        {
            isTouched = false
            updateRecordButtonImg()
            record()
        }
    }
    
    func updateRecordButtonImg()
    {
        if(SFSpeechRecognizer.authorizationStatus() == .authorized)
        {
            recordButton.tintColor = .black
            if(!isTouched)
            {
                recordButton.image = UIImage(systemName: "mic.circle")
            }
            else
            {
                recordButton.image = UIImage(systemName:"mic.circle.fill")
            }
        }
        else
        {
            recordButton.tintColor = .gray
            recordButton.image = UIImage(systemName: "mic.circle")
        }
        
    }
    
    func record()
    {
        if !startRecord
        {
            return
        }
        
        if audioEngine.isRunning {
            audioEngine.stop()
            recognitionRequest?.endAudio()
            updateRecordButtonImg()
        } else
        {
            do {
                try startRecording()
                startRecord = true
                
            } catch {
                print(error)
            }
        }
    }
    
    
    
    
}

extension GameplayVC:SFSpeechRecognizerDelegate
{
    func speechRecognizer(_ speechRecognizer: SFSpeechRecognizer, availabilityDidChange available: Bool)
    {
        if available {
            updateRecordButtonImg()
        } else {
            updateRecordButtonImg()
        }
    }
}
