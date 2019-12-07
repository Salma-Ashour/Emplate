//
//  TestUrls.swift
//  EmplateTests
//
//  Created by Salma Ashour on 12/7/19.
//  Copyright © 2019 Salma Ashour. All rights reserved.
//

import XCTest
import ObjectMapper
@testable import Emplate

class TestUrls: XCTestCase {

    
    func testMapsData() {
        let jsonDictionary: [String: Any] = [
            "original": "https://play-emplate.ams3.cdn.digitaloceanspaces.com/media/50064.jpeg",
            "large": "https://play-emplate.ams3.cdn.digitaloceanspaces.com/media/50064-large.jpeg",
            "mobile": "https://play-emplate.ams3.cdn.digitaloceanspaces.com/media/50064-mobile.jpeg",
            "thumbnail": "https://play-emplate.ams3.cdn.digitaloceanspaces.com/media/50064-thumbnail.jpeg"]
        let urls = Mapper<Urls>().map(JSON: jsonDictionary)

        XCTAssertEqual(urls?.thumbnail, "https://play-emplate.ams3.cdn.digitaloceanspaces.com/media/50064-thumbnail.jpeg")
    }

}
