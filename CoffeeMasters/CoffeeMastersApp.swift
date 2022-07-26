//
//  CoffeeMastersApp.swift
//  CoffeeMasters
//
//  Created by lawrencejews on 2022/07/21.
//

import SwiftUI

@main
struct CoffeeMastersApp: App {
    
    var menuManager = MenuManager()
    var cartManager = CartManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)
                .environmentObject(cartManager)
        }
    }
}
