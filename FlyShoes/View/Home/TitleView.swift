//
//  TitleView.swift
//  FlyShoes
//
//  Created by Victor Zerefos on 03/07/21.
//

import SwiftUI

struct TitleView: View {
    // MARK: - PROPERTIES
    var title: String
    
    var body: some View {
        // MARK: - BODY
        
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        } //: - HSTACK
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
    
    
    
}
// MARK: - PREVIEW
struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Tennis Shoes")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
