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
     
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //    Notificat ionCenter.default.addObserver(self, selector: #selector(handlePopupClosing), name: .saveDateTime, object: nil)
       
        
    }
    
    
    /*
    override func viewDidAppear(_ animated: Bool) {
        
        observer = NotificationCenter.default.addObserver(forName: .saveDateTime, object: nil, queue: OperationQueue.main, using: { (notification) in
            let dateVC = notification.object as! DatePopupViewController
            self.lblDate.text = dateVC.formattedDate
        })
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        
        if let observer = observer {
            
            NotificationCenter.default.removeObserver(observer)
        }
        
    }
    */

    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "toDatePopupViewControllerSegue" {
            
            let popup = segue.destination as! DatePopupViewController
            popup.showTimePicker = false
            
            
        }
    }
    

}
