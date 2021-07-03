//
//  FeatureTabView.swift
//  FlyShoes
//
//  Created by Victor Zerefos on 02/07/21.
//

import SwiftUI

struct FeatureTabView: View {
    // MARK: - PROPERTIES
    
    
    var body: some View {
        // MARK: - BODY
        
        TabView {
            ForEach(sports) { sport in
                FeatureItemView(sport: sport)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }  //: - TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
    
    
    
}
// MARK: - PREVIEW
struct FeatureTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureTabView()
            .background(Color.gray)
    }
}
