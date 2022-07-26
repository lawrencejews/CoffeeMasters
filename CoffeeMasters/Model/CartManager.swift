//
//  CartManager.swift
//  CoffeeMasters
//
//  Created by lawrencejews on 2022/07/22.
//

import Foundation


class CartManager: ObservableObject{
    @Published var cart: [(Product, Int)] = []
}
