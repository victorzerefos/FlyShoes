//
//  ContentView.swift
//  FlyShoes
//
//  Created by Victor Zerefos on 02/07/21.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    
    var body: some View {
        // MARK: - BODY
        
        
        ZStack {
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
                            .frame(height: 250)
                        
                        FooterView()
                            .padding(.horizontal)
                    }
                })
                
            } //: - VSTACK
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        } //: - ZSTACK
        .ignoresSafeArea(.all, edges: .all)
    }
}
// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
