//
//  GameSettingViewController.swift
//  NC3
//
//  Created by Dimas Pagam on 14/06/20.
//  Copyright © 2020 Dimas Pagam. All rights reserved.
//

import UIKit

class GameSettingViewController: UIViewController {
    let themePickerData = [String](arrayLiteral: "Animal", "Fruits")
    @IBOutlet weak var theme: UITextField!
    @IBOutlet weak var stepper:UIStepper!
   
    @IBOutlet weak var numberPlayer: UILabel!
    let sessionPickerData = [String](arrayLiteral: "10 second", "20 Second", "30 Second")
    @IBOutlet weak var sessionTime : UITextField!
    
    @IBOutlet weak var dropdown1: UIPickerView!
    @IBOutlet weak var dropdown2: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createPickerView()
        dismissPickerView()
        createPickerView2()
        dismissPickerView2()
        
        stepper.wraps = true
        stepper.autorepeat = true
        stepper.minimumValue = 1
        stepper.maximumValue = 8
        
        
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        numberPlayer.text = Int(sender.value).description
    }
 

}

extension GameSettingViewController : UIPickerViewDelegate, UIPickerViewDataSource
{
   
    // theme
    func createPickerView() {
        
        let pickerView = UIPickerView()
           pickerView.delegate = self
           theme.inputView = pickerView
       
           
    }
   
    func dismissPickerView() {
       let toolBar = UIToolbar()
       toolBar.sizeToFit()
        let button = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.action))
       toolBar.setItems([button], animated: true)
       toolBar.isUserInteractionEnabled = true
       theme.inputAccessoryView = toolBar
    }
    @objc func action() {
          view.endEditing(true)
    }
    
      override func didReceiveMemoryWarning() {
          super.didReceiveMemoryWarning()
          // Dispose of any resources that can be recreated.
      }
      
   
      
      func numberOfComponents(in pickerView: UIPickerView) -> Int {
          return 1
      }

      func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        var countrow:Int = themePickerData.count
        if pickerView == dropdown2
        {
            countrow = sessionPickerData.count
        }
        return countrow
      }

      func pickerView( _ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
          
        if pickerView == dropdown1
              {
                let row = themePickerData[row]
             return row
              }
        else if pickerView == dropdown2
              {
                let row = sessionPickerData[row]
                  return row
              }
        return""
      }

      func pickerView( _ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
          
        if pickerView == dropdown1
        {
            theme.text = themePickerData[row]
        }
        else if pickerView == dropdown2
        {
            sessionTime.text = sessionPickerData[row]
        }
      }
//
    //session time
    func createPickerView2() {
             let pickerView = UIPickerView()
             pickerView.delegate = self
             sessionTime.inputView = pickerView
      }
     
      func dismissPickerView2() {
         let toolBar = UIToolbar()
         toolBar.sizeToFit()
          let button = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.action))
         toolBar.setItems([button], animated: true)
         toolBar.isUserInteractionEnabled = true
         sessionTime.inputAccessoryView = toolBar
      }
    
    
    
}

