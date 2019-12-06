//
//  PostField.swift
//  Emplate
//
//  Created by Salma Ashour on 12/6/19.
//  Copyright © 2019 Salma Ashour. All rights reserved.
//

import Foundation
import ObjectMapper

class PostField: Mappable {
    required init?(map: Map) {
        
    }
    
    var type: String?
    var id: Int?
    var post_id: Int?
    var postFieldType_id: Int?
    var order: Int?
    var content: String?
    var created_at: String?
    var updated_at: String?


    // Mappable
    func mapping(map: Map) {
        type      <- map["type"]
        id        <- map["id"]
        post_id      <- map["post_id"]
        postFieldType_id  <- map["postFieldType_id"]
        order  <- map["order"]
        content  <- map["content"]
        created_at   <- map["created_at"]
        updated_at   <- map["updated_at"]
    }
}
