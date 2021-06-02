//
//  SubtractionCalculate.swift
//  TimeCalculate
//
//  Created by 岡優志 on 2021/06/02.
//

import Foundation

protocol Calculate {
    func calculate(logDate: Date, nowDate: Date) -> Int
}

class SubtractionCalculate: Calculate {
    func calculate(logDate: Date, nowDate: Date) -> Int {
        let subtractionSecond: Int? = Int(nowDate.timeIntervalSince(logDate))
        return subtractionSecond ?? 0
    }
}
