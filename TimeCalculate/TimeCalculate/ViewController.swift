//
//  ViewController.swift
//  TimeCalculate
//
//  Created by 岡優志 on 2021/05/31.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak private var subtractionTimeLabel: UILabel!
    
    private let dateFormatter = DateFormatter(calculate: SubtractionDate())
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // 今の日時を記録する
    @IBAction private func upDateButton(_ sender: Any) {
        dateFormatter.updateLog()
    }
    //　記録した日時と今の日時の差分を表示する
    @IBAction private func subtractionCalculateButton(_ sender: Any) {
        subtractionTimeLabel.text = dateFormatter.isDate()
    }
}
