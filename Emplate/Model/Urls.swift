//
//  Urls.swift
//  Emplate
//
//  Created by Salma Ashour on 12/6/19.
//  Copyright © 2019 Salma Ashour. All rights reserved.
//

import Foundation
import ObjectMapper


class Urls: Mappable {
    required init?(map: Map) {
        
    }
    
    var original: String?
    var large: String?
    var mobile: String?
    var thumbnail: String?


    // Mappable
    func mapping(map: Map) {
        original      <- map["original"]
        large        <- map["large"]
        mobile      <- map["mobile"]
        thumbnail  <- map["thumbnail"]
    }
}
