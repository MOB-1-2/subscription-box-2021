//
//  Box.swift
//  SubscriptionBox2021
//
//  Created by Adriana González Martínez on 2/13/21.
//

import Foundation


struct Box{
    var date: Date
    var items: [BoxItem]
    var imageStr: String
    
    //Computed property to return date as String
    var dateString: String{
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM yyy"
        return formatter.string(from: date)
    }
}

struct BoxItem{
    var name: String
    var categories: [Category]
    var description: String
    var isFavorite: Bool
}

enum Category: String, CaseIterable{
    case food = "food"
    case meds = "medicine"
    case accessories = "accessories"
    case toys = "toys"
    case grooming = "grooming"
    
    func displayName() -> String{
        return self.rawValue.capitalized
    }
}
