
//
//  SelectTimeViewController.swift
//  BK_TestModalView
//
//  Created by Benedikt Kurz on 29.05.19.
//  Copyright © 2019 Benedikt Kurz. All rights reserved.
//

import UIKit

class SelectTimeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func selectTime(_ sender: UIButton) {
        
        let sb = UIStoryboard(name: "DatePopupViewController", bundle: nil)
        let popup = sb.instantiateInitialViewController() as! DatePopupViewController
        
        popup.showTimePicker = true
        
        self.present(popup, animated: true)
        
    }
    

}
