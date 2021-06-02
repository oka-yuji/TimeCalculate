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
    let testLogDate = "2020-01-01 12:00:00"
    let testNowDate = "2021-01-01 12:00:00"
    
    
    func testDate() {
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let logDate = dateFormat.date(from: testLogDate)
        let nowDate = dateFormat.date(from: testNowDate)
        let reslut: String = isDate.isDate(isLogDate: logDate ?? Date(), isNowDate: nowDate ?? Date())
        
        XCTAssertEqual(reslut, "0秒以内")
        
    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
}
