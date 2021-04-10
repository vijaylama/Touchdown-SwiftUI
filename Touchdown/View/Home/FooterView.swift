//
//  FooterView.swift
//  Touchdown
//
//  Created by Vijay Lama on 4/7/21.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10, content: {
            Text("We offer the most curring edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
            
            Text("Copyright Vijay Lama\nAll right reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        })//: VSTACK
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
