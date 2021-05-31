//
//  ViewController.swift
//  TimeCalculate
//
//  Created by 岡優志 on 2021/05/31.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak private var timeLabel: UILabel!
    @IBOutlet weak private var inputTimeTextField: UITextField!
    
    let dateFormatter = DateFormatter()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func upDateButton(_ sender: Any) {
        dateFormatter.dateFormat = "yyyy/MM/dd/hh:mm:ss"
            print(String(dateFormatter.string(from: Date())))
        let nowDate = Date()
        print(nowDate)
        let nowDateFormat = nowDate.timeIntervalSinceNow
        print(nowDate)
        let toDay = nowDateFormat / 86400
        print(toDay)
    }
}

