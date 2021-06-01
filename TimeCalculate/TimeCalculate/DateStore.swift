//
//  DateStore.swift
//  TimeCalculate
//
//  Created by 岡優志 on 2021/06/01.
//

import Foundation

class DateStore {
    var logDate = Date()
    var nowDate = Date()
    
    func logDateAction() {
        logDate = Date()
    }
    
    func nowDateAction() {
        nowDate = Date()
    }
    
}
