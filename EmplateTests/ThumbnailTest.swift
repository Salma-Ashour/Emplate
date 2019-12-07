//
//  ThumbnailTest.swift
//  EmplateTests
//
//  Created by Salma Ashour on 12/7/19.
//  Copyright © 2019 Salma Ashour. All rights reserved.
//

import XCTest
import ObjectMapper
@testable import Emplate

class ThumbnailTest: XCTestCase {

   func testMapsData() {
       let jsonDictionary: [String: Any] = [
           "type": "media",
           "id": 40,
           "filetype": "jpeg"]
       let thumbnail = Mapper<Thumbnail>().map(JSON: jsonDictionary)

       XCTAssertEqual(thumbnail?.id, 40)
   }

}
