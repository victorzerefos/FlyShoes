//
//  ProductDetailView.swift
//  FlyShoes
//
//  Created by Victor Zerefos on 03/07/21.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
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
                .zIndex(1)
            
            //: - DETAIL BOTTOM PART
            VStack(alignment: .center, spacing: 0, content: {
                //: - RATINGS + SIZES
                RatingsSizesDetailView()
                    .padding(.top)
                    .padding(.bottom)
                
                //: - DESCRIPTION
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }) //: - SCROLL
               
                
                //: - QUANTITY + FAVORITE
                QuantityFavoriteDetailView()
                    .padding(.vertical, 30)
                
                //: - ADD TO CART
                AddToCartDetailView()
                    .padding(.bottom, 35)
                
                Spacer()
            }) //: - VSTACK
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -70)
                
            )
           
        }) //: - VSTACK
        .ignoresSafeArea(.all, edges: .all)
            .background(
                Color(red: shop.selectedProduct?.red ?? sampleProduct.red, green:shop.selectedProduct?.green ??  sampleProduct.green, blue:shop.selectedProduct?.blue ??  sampleProduct.blue)
            ).ignoresSafeArea(.all, edges: .all)
    }
    
    
    
}
// MARK: - PREVIEW
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
