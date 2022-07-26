//
//  Category.swift
//  CoffeeMasters
//
//  Created by lawrencejews on 2022/07/22.
//

import Foundation


struct Category: Decodable {
    var name: String
    var products: [Product]
}
