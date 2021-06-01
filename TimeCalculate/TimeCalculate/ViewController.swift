//
//  ViewController.swift
//  TimeCalculate
//
//  Created by 岡優志 on 2021/05/31.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak private var subtractionTimeLabel: UILabel!
    
    let upDateStore = DateStore()
    let subtractionDate = SubtractionDate()
    let dateFormatter = DateFormatter(calculate: SubtractionDate())
    var subtraction = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction private func upDateButton(_ sender: Any) {
        upDateStore.logDateAction()
    }
    
    @IBAction private func subtractionCalculateButton(_ sender: Any) {
        upDateStore.nowDateAction()
        subtraction = subtractionDate.calculate(logDate: upDateStore.logDate, nowDate: upDateStore.nowDate)
        subtractionTimeLabel.text = dateFormatter.isDate(subtractionDate: subtraction)
        print(subtraction)
    }
}
