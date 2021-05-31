//
//  ViewController.swift
//  TimeCalculate
//
//  Created by 岡優志 on 2021/05/31.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak private var subtractionTimeLabel: UILabel!
    @IBOutlet weak private var inputTimeTextField: UITextField!
    
    let dateFormatter = DateFormatter()
    var logDate: Double = 0.0
    let minutes = 60
    let hour = 3600
    let day = 86400
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func upDateButton(_ sender: Any) {
        dateFormatter.dateFormat = "yyyy-MM-dd hh:mm:ss"
        print(String(dateFormatter.string(from: Date())))
        let nowDate = Date()
        print(nowDate)
        let nowDateFormat = nowDate.timeIntervalSinceNow
        print(nowDate)
        let toDay = nowDateFormat / 86400
        logDate = toDay
        print(toDay)
        print(logDate)
    }
    @IBAction func subtractionCalculateButton(_ sender: Any) {
    }
}


enum DateStore {
    case second
    case minutes
    case hour
    case day
    case week
    case month
    case year
}
