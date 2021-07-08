//
//  Item.swift
//  SwiftUI_CustomTabBar
//
//  Created by park kyung seok on 2021/07/08.
//

import SwiftUI

struct Item: Identifiable {
    var id = UUID().uuidString
    var name: String
    var price: String
    var image: String
}

var items = [
    Item(name: "Meat Salad", price: "$6.50", image: "p1"),
    Item(name: "Chicken Salad", price: "$20.60", image: "p3"),
    Item(name: "Greeek Salad", price: "$3.52", image: "p2")
]
