//
//  ProductDetailView.swift
//  FlyShoes
//
//  Created by Victor Zerefos on 03/07/21.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - PROPERTIES
    
    
    var body: some View {
        // MARK: - BODY
        
        VStack(alignment: .leading, spacing: 5, content: {
            //: - NAVIBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            //: - HEADER
            
            HeaderDetailView()
                .padding(.horizontal)
                .padding(.bottom)
            
            
            //: - DETAIL TOP PART
            TopPartDetailView()
                .padding()
            
            //: - DETAIL BOTTOM PART
            
            //: - RATINGS + SIZES
            
            //: - DESCRIPTION
            
            //: - QUANTITY + FAVORITE
            
            //: - ADD TO CART
            Spacer()
        }) //: - VSTACK
        .ignoresSafeArea(.all, edges: .all)
            .background(
                Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue)
            ).ignoresSafeArea(.all, edges: .all)
    }
    
    
    
}
// MARK: - PREVIEW
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
