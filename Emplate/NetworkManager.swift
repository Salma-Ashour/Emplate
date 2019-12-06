//
//  NetworkManager.swift
//  Emplate
//
//  Created by Salma Ashour on 12/6/19.
//  Copyright © 2019 Salma Ashour. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper

class NetworkManager {
    
    func getOffers(handler: @escaping (([Offer]?) -> Void)) {
        let headers: HTTPHeaders = [ "X-Api-Key": "$2y$10$gpin5yXpMxbjWvsnnDMhLOYO7kpZSag7CKIDndWmUeJ/4WEchaAxK", "Accept": "application/json", "Content-Type": "application/json"]
        
        Alamofire.request("https://emplate.dev/v9/posts?include=postfields,postperiods,thumbnail", method: .get, headers: headers).responseArray { (response: DataResponse<[Offer]>) in
            switch response.result {
            case .success(let offers):
                handler(offers)
            case .failure:
                handler(nil)
            }
        }
    }
}
