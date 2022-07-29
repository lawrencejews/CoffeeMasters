//
//  Category.swift
//  CoffeeMasters
//
//  Created by lawrencejews on 2022/07/22.
//

import Foundation


struct Category: Decodable, Identifiable {
    var name: String
    var products: [Product]
    var id: String {
        return self.name
    }
}
