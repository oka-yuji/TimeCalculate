//
//  TimeCalculateTests.swift
//  TimeCalculateTests
//
//  Created by 岡優志 on 2021/05/31.
//

import XCTest
@testable import TimeCalculate

class TimeCalculateTests: XCTestCase {
    let minutes = 60
    let hour = 3600
    let day = 86400
    let week = 604800
    let month = 2592000
    let year = 31536000
    var dateFormatter = DateFormatter(calculate: SubtractionDate())
    func testDate() {
        dateFormatter.subtraction = 10
        XCTAssertEqual(dateFormatter.isDate(), "0秒以内")
    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
}
