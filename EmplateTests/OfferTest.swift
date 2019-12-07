//
//  OfferTest.swift
//  EmplateTests
//
//  Created by Salma Ashour on 12/7/19.
//  Copyright © 2019 Salma Ashour. All rights reserved.
//

import XCTest
import ObjectMapper
@testable import Emplate

class OfferTest: XCTestCase {

    func testMapsData() {
        let jsonDictionary: [String: Any] = [
            "type": "posts",
            "id": 2356,
            "name": "Zara",
            "approved":true]
        let offer = Mapper<Offer>().map(JSON: jsonDictionary)

        XCTAssertEqual(offer?.id, 2356)
        XCTAssertEqual(offer?.type, "posts" )
    }
    
}
