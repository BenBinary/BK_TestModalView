//
//  SecondViewController.swift
//  BK_TestModalView
//
//  Created by Benedikt Kurz on 30.05.19.
//  Copyright © 2019 Benedikt Kurz. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblDate: UILabel!
    var observer: NSObjectProtocol?
     

    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        // Code
        if segue.identifier == "toDatePopupViewControllerSeuge" {
            
            let popup = segue.destination as! DatePopupViewController
            
            popup.showTimePicker = false
            
            // 1. Assign to a function
            // popup.onSave = onSave
            // 2. Use a Closure
            popup.onSave = { (data) in
                self.lblDate.text = data
                
            }
        }
    }
    
    func onSave(_ data: String) -> () {
        
        lblDate.text = data
        
    }
    

}
