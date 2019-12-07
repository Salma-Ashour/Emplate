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
    
    func getPrice() -> (price: String?, priceBefore: String?, discount: String?) {
        if let content = self.content {
            let data = Data(content.utf8)
            do {
                // make sure this JSON is in the format we expect
                if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                    // try to read out a string array
                    let price = json["price"] as? String
                    let priceBefore = json["price_before"] as? String
                    let discount = json["discount"] as? String
                    return (price, priceBefore, discount)
                }
            } catch let error as NSError {
                print("Failed to load: \(error.localizedDescription)")
                
            }
        }
        return (nil, nil, nil)
    }
}
