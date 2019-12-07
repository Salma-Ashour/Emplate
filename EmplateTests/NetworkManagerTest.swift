//
//  NetworkManagerTest.swift
//  EmplateTests
//
//  Created by Salma Ashour on 12/8/19.
//  Copyright © 2019 Salma Ashour. All rights reserved.
//

import XCTest
@testable import Emplate

class NetworkManagerTest: XCTestCase {

    func testNetwork() {
           let e = expectation(description: "Alamofire")
           let networkManager = NetworkManager()
           networkManager.getOffers{ offers in
               XCTAssertNotNil(offers)
               e.fulfill()
           }
           waitForExpectations(timeout: 10.0, handler: nil)
       }

}
