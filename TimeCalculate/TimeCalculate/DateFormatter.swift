//
//  DateFormatter.swift
//  TimeCalculate
//
//  Created by 岡優志 on 2021/06/01.
//

import Foundation

class DateFormatter {
    private let dateStore = DateStore()
    
    private let calculate: Subtraction
    init(calculate: Subtraction) {
        self.calculate = calculate
    }
    
    var subtraction = 0
    
    // 各に適した秒を定義
    private let minutes = 60
    private let hour = 3600
    private let day = 86400
    private let week = 604800
    private let month = 2592000
    private let year = 31536000
    
    // 日時を記録
    func updateLog() {
        dateStore.logDateAction()
    }
    
    // 記録した日時と現在の日時の差分を条件によって変化させる
    func isDate() -> String {
        dateStore.nowDateAction()
        var isSubtraction = ""
        subtraction = calculate.calculate(logDate: dateStore.logDate, nowDate: dateStore.nowDate)
        var subtractionReslut = subtraction
        switch subtractionReslut {
        case 0...minutes:
            isSubtraction = "\(subtractionReslut)秒以内"
        case 0...hour:
            subtractionReslut /= minutes
            isSubtraction = "\(subtractionReslut)分以内"
        case 0...day:
            subtractionReslut /= hour
            isSubtraction = "\(subtractionReslut)時間以内"
        case 0...week:
            subtractionReslut /= day
            isSubtraction = "\(subtractionReslut)日以内"
        case 0...month:
            subtractionReslut /= week
            isSubtraction = "\(subtractionReslut)週間以内"
        case 0...year:
            subtractionReslut /= month
            isSubtraction = "\(subtractionReslut)ヶ月以内"
        default:
            if subtractionReslut < 0 {
             isSubtraction = "エラー"
            } else {
            subtractionReslut /= year
            isSubtraction = "\(subtractionReslut)年以内"
            }
        }
        return isSubtraction
    }
}
