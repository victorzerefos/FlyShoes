//
//  ProductGridView.swift
//  FlyShoes
//
//  Created by Victor Zerefos on 03/07/21.
//

import SwiftUI

struct ProductGridView: View {
    var body: some View {
        LazyVGrid(columns: gridLayout, spacing: 15, pinnedViews: [], content: {
            ForEach(products) { product in
                ProductItemView(product: product)
                   
            }
        }) //: - GRID
        .padding(.horizontal)
    }
}

struct ProductGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductGridView()
    }
}
