//
//  CustomShape.swift
//  FlyShoes
//
//  Created by Victor Zerefos on 04/07/21.
//

import SwiftUI

struct CustomShape: Shape {
    func path(in rec: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rec, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}

struct CustomShape_Previews: PreviewProvider {
    static var previews: some View {
        CustomShape()
            .previewLayout(.fixed(width: 428, height: 120))
            .padding()
    }
}
