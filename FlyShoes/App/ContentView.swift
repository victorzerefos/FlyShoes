//
//  ContentView.swift
//  FlyShoes
//
//  Created by Victor Zerefos on 02/07/21.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    
    
    var body: some View {
        // MARK: - BODY
        
        
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)

                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0) {
                            FeatureTabView()
                                .transition(.slide)
                                .frame(height: 250)
                            
                            CategoryGridView()
                            
                            TitleView(title: "Tennis shoes")
                            
                            ProductGridView()
                                
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                                
                            
                            FooterView()
                                .padding(.horizontal)
                        }
                    })
                    
                } //: - VSTACK
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        } //: - ZSTACK
        .ignoresSafeArea(.all, edges: .all)
    }
}
// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
