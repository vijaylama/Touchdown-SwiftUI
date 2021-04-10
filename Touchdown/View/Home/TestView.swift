//
//  TestView.swift
//  Touchdown
//
//  Created by Vijay Lama on 4/7/21.
//

import SwiftUI

struct TestView: View {
    //MARK: - PROPERTIES
    let category: Category
    
    //MARK: - BODY
    var body: some View {
            Image(category.image)
              .resizable()
              .scaledToFit()
              .cornerRadius(12)
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView(category: categories[0])
    }
}
