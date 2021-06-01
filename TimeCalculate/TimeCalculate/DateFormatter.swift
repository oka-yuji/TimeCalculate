//
//  DateFormatter.swift
//  TimeCalculate
//
//  Created by 岡優志 on 2021/06/01.
//

import Foundation

enum IsDate: Int {
   case minutes = 60
   case hour = 3600
   case day = 86400
   case week = 604800
   case month = 2592000
   case year = 31536000
}


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
    
    func isDate(subtractionDate: Int) -> String {
        let dateStore = DateStore()
        var isSubtraction = ""
        let subtractionReslut: Int =
            1 + week
//            calculate.calculate(logDate: dateStore.logDate, nowDate: dateStore.nowDate)
print(subtractionReslut)
        switch subtractionReslut {
        case 0...minutes:
            isSubtraction = "秒以内"
        case 0...hour:
            isSubtraction = "分以内"
        case 0...day:
            isSubtraction = "時間以内"
        case 0...week:
            isSubtraction = "日以内"
        case 0...month:
            isSubtraction = "週間以内"
        case 0...year:
            isSubtraction = "ヶ月以内"
        default:
            isSubtraction = "年以内"
        }
        return isSubtraction
    }
}
