//
//  SubtractionDate.swift
//  TimeCalculate
//
//  Created by 岡優志 on 2021/05/31.
//

import Foundation

protocol Subtraction {
    func calculate(logDate: Date, nowDate: Date) -> Int
}

class SubtractionDate: Subtraction {
    func calculate(logDate: Date, nowDate: Date) -> Int {
        let subtractionSecond = nowDate.timeIntervalSince(logDate)
        let reslutSubtraction = Int(subtractionSecond)
        return reslutSubtraction
    }
}
