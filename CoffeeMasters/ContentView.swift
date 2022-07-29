//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by lawrencejews on 2022/07/21.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var cartManager : CartManager
    
    var body: some View {
        TabView{
            MenuPage()
                .tabItem{
                    Image(systemName: "cup.and.saucer")
                    Text("Menu")
            }
            OffersPage()
                .tabItem{
                    Image(systemName: "tag")
                    Text("Offers")
        }
            CartPage()
                .tabItem{
                    Image(systemName: "cart")
                    Text("Order")
                        .badge(cartManager.cart.count)
            }
            infoPage()
                .tabItem{
                    Image(systemName: "info")
                    Text("Info")
            
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
