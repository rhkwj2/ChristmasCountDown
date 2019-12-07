//
//  ViewController.swift
//  ChristmasCountDown
//
//  Created by Kim Yeon Jeong on 2019/12/5.
//  Copyright © 2019 Kim Yeon Jeong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var showTodayLabel: UILabel!
    
    @IBOutlet weak var showUntilLabel: UILabel!
    // todo : calculate Today to christmas day
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //todo : Change Label to today date
        let now = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy MM dd"
        let time = formatter.string(from: now)
        self.showTodayLabel.text = time
        
        
    }

    @IBAction func chooseHolidayDatePicker(_ sender: Any) {
        //user choose their holiday
        let datePicker = sender as! UIDatePicker
        
        //get date from datePicker
        let holidayDate = datePicker.date
        
        //showUntilLabel show how many date left from today to holiday
    
        let diffDateComponents = Calendar.current.dateComponents([.day], from: Date(), to: holidayDate)
              
        showUntilLabel.text = "\(diffDateComponents.day!) days"
    }
}

