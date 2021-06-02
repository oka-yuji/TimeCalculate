//
//  TimeCalculateTests.swift
//  TimeCalculateTests
//
//  Created by 岡優志 on 2021/05/31.
//

import XCTest
@testable import TimeCalculate

class TimeCalculateTests: XCTestCase {
    let isDate = IsDate(calculate: SubtractionCalculate())
    let testLogDate = "2021-01-01 12:00:00"
    let testNowDate = "2021-01-01 12:00:00"
    let dateFormat = DateFormatter()
    let testDates: [(testLogDate: String, reslut: String)] = [
        ("2021-01-01 11:59:59", "1秒以内"),
        ("2021-01-01 11:58:30", "1分以内"),
        ("2021-01-01 10:30:20", "1時間以内"),
        ("2020-12-31 11:50:00", "1日以内"),
        ("2020-12-20 11:59:59", "1週間以内"),
        ("2020-11-15 11:59:59", "1ヶ月以内"),
        ("2020-01-01 11:59:59", "1年以内"),
        ("2022-01-01 11:59:59", "エラー")
    ]
    
    func testDate() {
        for testDate in 0..<testDates.count {
            dateFormat.dateFormat = "yyyy-MM-dd HH:mm:ss"
            dateFormat.locale = Locale(identifier: "ja_JP")
//            let logDate = dateFormat.date(from: testLogDate) ?? Date()
            let logDate = dateFormat.date(from: testDates[testDate].testLogDate) ?? Date()
            let nowDate = dateFormat.date(from: testNowDate) ?? Date()
            let reslut: String = isDate.isDate(isLogDate: logDate, isNowDate: nowDate)
            XCTAssertEqual(reslut, testDates[testDate].reslut)
        }
    }
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
}
