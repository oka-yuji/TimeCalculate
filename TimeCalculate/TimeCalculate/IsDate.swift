//
//  DateFormatter.swift
//  TimeCalculate
//
//  Created by 岡優志 on 2021/06/01.
//

import Foundation

class IsDate {
    // 各に適した秒を定義
    private static let minutes = 60
    private static let hour = minutes * 60
    private static let day = hour * 24
    private static let week = day * 7
    private static let month = day * 30
    private static let year = day * 365
    // 疎結合
    private let calculate: Calculate
    init(calculate: Calculate) {
        self.calculate = calculate
    }
    // 記録用のDate
     var logDate = Date()
     var nowDate = Date()
    // 日時の差分の初期値
     var subtraction = 0
    // 日時を記録
    func updateLog() {
        logDate = Date()
    }
    // 記録した日時と現在の日時の差分を条件によって変化させる
    func isDate(isLogDate: Date, isNowDate: Date) -> String {
        nowDate = Date()
        let fetchSubtraction: Int = calculate.calculate(logDate: isLogDate, nowDate: isNowDate)
        subtraction = fetchSubtraction
        switch subtraction {
        case 0...IsDate.minutes:
            return "\(subtraction)秒以内"
        case 0...IsDate.hour:
            subtraction /= IsDate.minutes
            return "\(subtraction)分以内"
        case 0...IsDate.day:
            subtraction /= IsDate.hour
            return "\(subtraction)時間以内"
        case 0...IsDate.week:
            subtraction /= IsDate.day
            return "\(subtraction)日以内"
        case 0...IsDate.month:
            subtraction /= IsDate.week
            return "\(subtraction)週間以内"
        case 0...IsDate.year:
            subtraction /= IsDate.month
            return "\(subtraction)ヶ月以内"
        default:
            if subtraction < 0 {
             return "エラー"
            } else {
                subtraction /= IsDate.year
            return "\(subtraction)年以内"
            }
        }
    }
}
