//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Vijay Lama on 4/8/21.
//

import SwiftUI

struct BrandItemView: View {
    //MARK: - PROPERTY
    let brand: Brand
    
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12))
        
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
