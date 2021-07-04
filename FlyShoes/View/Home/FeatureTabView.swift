//
//  FeatureTabView.swift
//  FlyShoes
//
//  Created by Victor Zerefos on 02/07/21.
//

import SwiftUI

struct FeatureTabView: View {
    // MARK: - PROPERTIES
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State private var currentImageIndex = 0
    
    var body: some View {
        // MARK: - BODY
        
        TabView(selection: $currentImageIndex) {
            ForEach(sports) { sport in
                FeatureItemView(sport: sport)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }  //: - TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .onReceive(timer, perform: { _ in
            withAnimation {
                currentImageIndex = currentImageIndex < sports.count ? currentImageIndex + 1 : 0
            }
        })
    }
    
    
    
}
// MARK: - PREVIEW
struct FeatureTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureTabView()
            .background(Color.gray)
    }
}
