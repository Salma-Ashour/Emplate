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
        let headers: HTTPHeaders = [ "X-Api-Key": Utils.apiKey, "Accept": "application/json", "Content-Type": "application/json"]
        
        Alamofire.request(Utils.url, method: .get, headers: headers).responseArray { (response: DataResponse<[Offer]>) in
            switch response.result {
            case .success(let offers):
                handler(offers)
            case .failure:
                handler(nil)
            }
        }
    }
}
