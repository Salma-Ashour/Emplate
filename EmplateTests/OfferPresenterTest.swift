//
//  OfferPresenterTest.swift
//  EmplateTests
//
//  Created by Salma Ashour on 12/7/19.
//  Copyright © 2019 Salma Ashour. All rights reserved.
//

import XCTest
import ObjectMapper
@testable import Emplate

class NetworkMangagerMock: NetworkManager {
    fileprivate let offers: [Offer]
    init(offers: [Offer]) {
        self.offers = offers
    }
    override func getOffers(handler callBack: @escaping ([Offer]) -> Void) {
        callBack(offers)
    }

}

class OfferViewMock : OfferView {
    
    var setOffersCalled = false
    var setEmptyUsersCalled = false
    var startIndicator = false
    var stopIndicator = false
    
    func startLoading() {
        startIndicator = true
    }
    
    func finishLoading() {
        stopIndicator = true
    }
    
    func setOffers(_ offers: [Offer]) {
        setOffersCalled = true
    }
}

class OfferPresenterTest: XCTestCase {

    func testGetOffers() {
        
        let jsonDictionary: [String: Any] = [
            "type": "posts",
            "id": 2356,
            "name": "Zara",
            "approved":true]
        guard let offer = Mapper<Offer>().map(JSON: jsonDictionary) else { return  }
        let networkManager = NetworkMangagerMock(offers: [offer])
        let offerview = OfferViewMock()
        
        let offerPresenter = OfferPresenter(networkManager: networkManager)
        offerPresenter.attachView(offerview)
        offerPresenter.getOffers()
        XCTAssertTrue(offerview.stopIndicator)
        XCTAssertTrue(offerview.setOffersCalled)
    }
}
