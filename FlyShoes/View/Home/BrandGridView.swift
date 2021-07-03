//
//  BrandGridView.swift
//  FlyShoes
//
//  Created by Victor Zerefos on 03/07/21.
//

import SwiftUI

struct BrandGridView: View {
    // MARK: - PROPERTIES
    
    
    var body: some View {
        // MARK: - BODY
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, spacing: colunmSpacing, content: {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                      
                }
            }) //: - GRID
            .frame(height: 200)
            .padding(15)
        }) //: - SCROLL
    }
    
    
    
}
// MARK: - PREVIEW
struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
    }
}
