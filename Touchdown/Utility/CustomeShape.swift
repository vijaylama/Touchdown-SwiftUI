//
//  CustomeShape.swift
//  Touchdown
//
//  Created by Vijay Lama on 4/8/21.
//

import SwiftUI

struct CustomeShape: Shape {
    func path(in rect: CGRect) -> Path{
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))
        return Path(path.cgPath)
    }
}

struct CustomeShape_Previews: PreviewProvider {
    static var previews: some View {
        CustomeShape()
            .previewLayout(.fixed(width: 428, height: 120))
            .padding()
    }
}
