//
//  PostFieldTest.swift
//  EmplateTests
//
//  Created by Salma Ashour on 12/7/19.
//  Copyright © 2019 Salma Ashour. All rights reserved.
//

import XCTest
import ObjectMapper
@testable import Emplate

class PostFieldTest: XCTestCase {

    func testMapsData() {
        let jsonDictionary: [String: Any] = [
            "type": "postfields",
            "id": 34675,
            "postFieldType_id": 6,
            "content":"{\"redeemable\":false,\"price\":\"600\",\"images\":[74699],\"text\":\"WOODBIRD\"}"]
        let postfield = Mapper<PostField>().map(JSON: jsonDictionary)
        let prices = postfield?.getPrice()

        XCTAssertEqual(postfield?.id, 34675)
        XCTAssertEqual(postfield?.type, "postfields")
        XCTAssertEqual(prices?.price, "600")
        XCTAssertNil(prices?.priceBefore)
        XCTAssertNil(prices?.discount)
        
    }

    func testFailedSerialize() {
        let jsonDictionary: [String: Any] = [
            "type": "postfields",
            "id": 34675,
            "postFieldType_id": 6,
            "content":"{\"redeemable\":false,\"price\":\"600\",\"images\":[74699], "]
        let postfield = Mapper<PostField>().map(JSON: jsonDictionary)
        let prices = postfield?.getPrice()
        
        XCTAssertNil(prices?.priceBefore)
        XCTAssertNil(prices?.discount)
    }
}
