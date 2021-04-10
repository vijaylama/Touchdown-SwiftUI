//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Vijay Lama on 4/8/21.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK: - PROPERTY
    @EnvironmentObject var shop: Shop
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            //NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            //HEADER
            HeaderDetailView()
                .padding(.horizontal)
            //DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            //DETAIL BOTTOM PART
            VStack(alignment: .center, spacing: 0, content: {
                //RATINGS +SIZES
                RatingSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                //DESCRIPTION
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })//: SCROLL
                //QUANTITY + FAVORITE
                QuantityFavoriteDetailView()
                    .padding(.vertical, 10)
                //ADD TO CART
               AddToCardDetailView()
                .padding(.bottom, 20)
            })
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomeShape())
                    .padding(.top, -105)
            )
        })//: VSTACK
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            ).ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
