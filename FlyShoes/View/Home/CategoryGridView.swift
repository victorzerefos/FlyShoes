//
//  CategoryGridView.swift
//  FlyShoes
//
//  Created by Victor Zerefos on 03/07/21.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: - PROPERTIES
    
    
    var body: some View {
        // MARK: - BODY
        
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: colunmSpacing, pinnedViews: [], content: {
                Section(header: SectionView(rotateClockwise: false), footer: SectionView(rotateClockwise: true)) {
                    ForEach(categories){ category in
                        CategoryItemView(category: category)
                    }
                }
            }) //: - GRID
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }) //: - SCROLL
    }
    
    
    
}
// MARK: - PREVIEW
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
    }
}
