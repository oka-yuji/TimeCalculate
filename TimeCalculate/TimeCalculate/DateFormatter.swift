//
//  DateFormatter.swift
//  TimeCalculate
//
//  Created by 岡優志 on 2021/06/01.
//

import Foundation

class DateFormatter {
    private let calculate: Subtraction
    init(calculate: Subtraction) {
        self.calculate = calculate
    }
    let minutes = 60
    let hour = 3600
    let day = 86400
    let week = 604800
    let month = 2592000
    let year = 31536000
    
    let dateStore = DateStore()
    
    func updateLog() {
        dateStore.logDateAction()
    }
    
    func isDate() -> String {
        dateStore.nowDateAction()
        var isSubtraction = ""
        var subtractionReslut = calculate.calculate(logDate: dateStore.logDate, nowDate: dateStore.nowDate)
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
            subtractionReslut /= year
            isSubtraction = "\(subtractionReslut)年以内"
        }
        return isSubtraction
    }
}
