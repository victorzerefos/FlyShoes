//
//  FeatureItemView.swift
//  FlyShoes
//
//  Created by Victor Zerefos on 02/07/21.
//

import SwiftUI

struct FeatureItemView: View {
    // MARK: - PROPERTIES
    let sport: Sport
    
    var body: some View {
        // MARK: - BODY
        
        Image(sport.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
            .shadow(radius: 1)
    }
}
// MARK: - PREVIEW
struct FeatureItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureItemView(sport: sports[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
