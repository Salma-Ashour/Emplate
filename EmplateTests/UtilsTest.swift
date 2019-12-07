//
//  UtilsTest.swift
//  EmplateTests
//
//  Created by Salma Ashour on 12/8/19.
//  Copyright © 2019 Salma Ashour. All rights reserved.
//

import XCTest
@testable import Emplate

class UtilsTest: XCTestCase {
    
    func testDateFormatted() {
        if let date = Utils.getDateFormatted(dateString: "2019-11-13T09:52:42+00:00") {
            XCTAssertEqual(date, "11/13/2019")
        }
    }
    
    func testFailure() {
        let date = Utils.getDateFormatted(dateString: "2019-11-13")
        XCTAssertNotEqual(date, "11/13/2019")
        XCTAssertNil(date)
    }
}
