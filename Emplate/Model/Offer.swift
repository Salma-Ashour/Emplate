//
//  Offer.swift
//  Emplate
//
//  Created by Salma Ashour on 12/6/19.
//  Copyright © 2019 Salma Ashour. All rights reserved.
//

import Foundation
import ObjectMapper

class Offer: Mappable {
    required init?(map: Map) {
        
    }
    
    var type: String?
    var id: Int?
    var name: String?
    var approved: Bool?
    var collectible: Bool?
    var parameters: String?
    var url: String?                        
    var created_at: String?
    var updated_at: String?
    var deleted_at: String?
    var postfields: [PostField] = []
    var postperiods: [PostPeriod] = []
    var thumbnail: Thumbnail?

    // Mappable
    func mapping(map: Map) {
        type      <- map["type"]
        id        <- map["id"]
        name      <- map["name"]
        approved  <- map["approved"]
        collectible  <- map["collectible"]
        parameters  <- map["parameters"]
        url     <- map["url"]
        created_at   <- map["created_at"]
        updated_at   <- map["updated_at"]
        deleted_at   <- map["deleted_at"]
        postfields   <- map["postfields"]
        postperiods <- map["postperiods"]
        thumbnail <- map["thumbnail"]
    }
}
