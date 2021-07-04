//
//  ProductGridView.swift
//  FlyShoes
//
//  Created by Victor Zerefos on 03/07/21.
//

import SwiftUI

struct ProductGridView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        LazyVGrid(columns: gridLayout, spacing: 15, pinnedViews: [], content: {
            ForEach(products) { product in
                ProductItemView(product: product)
                    .onTapGesture {
                        withAnimation(.easeOut) {
                            shop.selectedProduct = product
                            shop.showingProduct = true
                        }
                    }
                   
            } //: - LOOP
        }) //: - GRID
        .padding(.horizontal)
    }
}

struct ProductGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductGridView()
    }
}
