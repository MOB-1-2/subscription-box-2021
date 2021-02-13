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
}

struct BoxItem{
    var name: String
    var categories: [Category]
    var description: String
    var isFavorite: Bool
}

enum Category{
    case food
    case treats
    case meds
    case clothing
    case toys
    case grooming
    case training
}
