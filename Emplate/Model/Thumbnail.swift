//
//  Thumbnail.swift
//  Emplate
//
//  Created by Salma Ashour on 12/6/19.
//  Copyright © 2019 Salma Ashour. All rights reserved.
//


import Foundation
import ObjectMapper

class Thumbnail: Mappable {
    required init?(map: Map) {
    }
    
    var type: String?
    var id: Int?
    var name: String?
    var filetype: String?
    var width: Int?
    var height: Int?
    var urls: Urls?


    // Mappable
    func mapping(map: Map) {
        type      <- map["type"]
        id        <- map["id"]
        name      <- map["name"]
        filetype  <- map["filetype"]
        width     <- map["width"]
        height    <- map["height"]
        urls      <- map["urls"]
    }
}
