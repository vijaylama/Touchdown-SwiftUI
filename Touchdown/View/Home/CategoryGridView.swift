//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Vijay Lama on 4/7/21.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(
                    header: SectionView(rotationClockwise: false),
                    footer: SectionView(rotationClockwise: true)
                ) {
                    ForEach(categories){category in
                        CategoryItemView(category: category)
                    }
                }//: SECTION
            })//: LAZYHGRID
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        })//: SCROLLVIEW
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorGray)
    }
}
