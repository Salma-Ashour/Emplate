//
//  Utils.swift
//  Emplate
//
//  Created by Salma Ashour on 12/7/19.
//  Copyright © 2019 Salma Ashour. All rights reserved.
//

import Foundation

class Utils {
    
    static var url = "https://emplate.dev/v9/posts?include=postfields,postperiods,thumbnail"
    static var apiKey = "$2y$10$gpin5yXpMxbjWvsnnDMhLOYO7kpZSag7CKIDndWmUeJ/4WEchaAxK"
    
    static func getDateFormatted(dateString: String) -> String? {
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"

        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "MM/dd/yyyy"

        if let date = dateFormatterGet.date(from: dateString) {
             return dateFormatterPrint.string(from: date)
        } else {
            print("There was an error decoding the string")
            return nil
        }
    }
}
