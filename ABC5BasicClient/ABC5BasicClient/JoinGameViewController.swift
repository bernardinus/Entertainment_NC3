//
//  JoinGameViewController.swift
//  ABC5BasicClient
//
//  Created by Aldo on 14/06/20.
//  Copyright © 2020 ADA. All rights reserved.
//

import UIKit

class JoinGameViewController: UIViewController{
    
    @IBOutlet weak var roomidField: UITextField!
    
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var avatar2: UIImageView!
    @IBOutlet weak var avatar3: UIImageView!
    @IBOutlet weak var avatar4: UIImageView!
    @IBOutlet weak var avatar5: UIImageView!
    @IBOutlet weak var avatar6: UIImageView!
    @IBOutlet weak var avatar7: UIImageView!
    @IBOutlet weak var avatar8: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        
        
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")

            view.addGestureRecognizer(tap)
        }

        //Calls this function when the tap is recognized.
        @objc func dismissKeyboard() {
            //Causes the view (or one of its embedded text fields) to resign the first responder status.
            view.endEditing(true)
        
        super.viewDidLoad()
        
            
        
        
        
        avatarImage.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        avatarImage.layer.borderWidth = 1
        
        avatar2.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        avatar2.layer.borderWidth = 1
        
        avatar3.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        avatar3.layer.borderWidth = 1
        
        avatar4.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        avatar4.layer.borderWidth = 1
        
        avatar5.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        avatar5.layer.borderWidth = 1
        
        avatar6.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        avatar6.layer.borderWidth = 1
        
        avatar7.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        avatar7.layer.borderWidth = 1
        
        avatar8.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        avatar8.layer.borderWidth = 1
        
        
        // Do any additional setup after loading the view.
    }
    
 
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let point = (touches.first?.location(in: self.view))!
        
        if avatarImage.frame.contains(point)
        {
            // touch inside
            avatarImage.layer.borderColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
        else {
            avatarImage.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
        
        if avatar2.frame.contains(point)
        {
            // touch inside
            avatar2.layer.borderColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
        else {
            avatar2.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
        
        if avatar3.frame.contains(point)
        {
            // touch inside
            avatar3.layer.borderColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
        else {
            avatar3.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
        
        if avatar4.frame.contains(point)
        {
            // touch inside
            avatar4.layer.borderColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
        else {
            avatar4.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
        
        if avatar5.frame.contains(point)
        {
            // touch inside
            avatar5.layer.borderColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
        else {
            avatar5.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
        
        if avatar6.frame.contains(point)
        {
            // touch inside
            avatar6.layer.borderColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
        else {
            avatar6.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
        
        if avatar7.frame.contains(point)
        {
            // touch inside
            avatar7.layer.borderColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
        else {
            avatar7.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
        
        if avatar8.frame.contains(point)
        {
            // touch inside
            avatar8.layer.borderColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
        else {
            avatar8.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
        
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
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
