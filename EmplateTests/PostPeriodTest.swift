//
//  PostPeriodTest.swift
//  EmplateTests
//
//  Created by Salma Ashour on 12/7/19.
//  Copyright © 2019 Salma Ashour. All rights reserved.
//

import XCTest
import ObjectMapper
@testable import Emplate

class PostPeriodTest: XCTestCase {

    func testMapsData() {
        let jsonDictionary: [String: Any] = [
            "type": "postperiods",
            "id": 34675,
            "start": "2019-02-13T23:00:00+00:00"]
        let postperiod = Mapper<PostPeriod>().map(JSON: jsonDictionary)

        XCTAssertEqual(postperiod?.id, 34675)
        XCTAssertEqual(postperiod?.created_at, nil)
    }
   
}
