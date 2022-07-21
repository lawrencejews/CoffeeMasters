//
//  Offer.swift
//  CoffeeMasters
//
//  Created by lawrencejews on 2022/07/22.
//

import SwiftUI

struct Offer: View {
    
    var title = ""
    var description = ""
    
    var body: some View {
        VStack{
            Text(title)
                .padding()
                .font(.title)
                .background(Color("CardBackground"))
            Text(description)
                .background(Color("CardBackground")).padding()
        }
       
    }
}

struct Offer_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Offer(title: "My offer", description: "This is a description")
                .previewLayout(.fixed(width:350, height: 200))
            .previewInterfaceOrientation(.portrait)
        }
    }
}
