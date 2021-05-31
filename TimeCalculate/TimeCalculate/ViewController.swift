//
//  ViewController.swift
//  TimeCalculate
//
//  Created by 岡優志 on 2021/05/31.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak private var subtractionTimeLabel: UILabel!

    var logDate = Date()
    var nowDate = Date()
    var subtraction = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction private func upDateButton(_ sender: Any) {
        logDate = Date()
    }
    
    @IBAction private func subtractionCalculateButton(_ sender: Any) {
        nowDate = Date()
        let subtractionSecond = nowDate.timeIntervalSince(logDate)
        subtraction = Int(subtractionSecond)
        subtractionTimeLabel.text = String(subtraction)
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

//let dateFormatter = DateFormatter()
//dateFormatter.dateFormat = "yyyy-MM-dd hh:mm:ss"
//print(dateFormatter.string(from: Date()))
