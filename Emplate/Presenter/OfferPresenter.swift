//
//  OfferPresenter.swift
//  Emplate
//
//  Created by Salma Ashour on 12/6/19.
//  Copyright © 2019 Salma Ashour. All rights reserved.
//

import Foundation

protocol OfferView {
    func startLoading()
    func finishLoading()
    func setOffers(_ offers: [Offer])
}

class OfferPresenter {
    fileprivate let networkManager: NetworkManager
    fileprivate var offerView : OfferView?
    
    init(networkManager:NetworkManager){
        self.networkManager = networkManager
    }
    
    func attachView(_ view:OfferView){
        offerView = view
    }
    
    
    func getOffers(){
        self.offerView?.startLoading()
        networkManager.getOffers{ [weak self] offers in
            if let offers  = offers {
                self?.offerView?.setOffers(offers)
            }
            self?.offerView?.finishLoading()
        }
    }
}
