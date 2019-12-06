//
//  PostPeriod.swift
//  Emplate
//
//  Created by Salma Ashour on 12/6/19.
//  Copyright © 2019 Salma Ashour. All rights reserved.
//

import Foundation
import ObjectMapper

class PostPeriod: Mappable {
    required init?(map: Map) {
        
    }
    
    var type: String?
    var id: Int?
    var start: String?
    var stop: String?
    var created_at: String?
    var updated_at: String?


    // Mappable
    func mapping(map: Map) {
        type      <- map["type"]
        id        <- map["id"]
        start      <- map["start"]
        stop  <- map["stop"]
        created_at   <- map["created_at"]
        updated_at   <- map["updated_at"]
    }
}
