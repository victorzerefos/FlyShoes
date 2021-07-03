//
//  CategoryItemView.swift
//  FlyShoes
//
//  Created by Victor Zerefos on 03/07/21.
//

import SwiftUI

struct CategoryItemView: View {
    
    // MARK: - PROPERTIES
    let category: Category
    
    var body: some View {
        // MARK: - BODY

        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {}, label: {
                Image(category.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                Text(category.name.uppercased())
                    .foregroundColor(.gray)
                    .fontWeight(.light)
            }) //: - BUTTON
            Spacer()
        }) //: - HSTACK
        .padding()
        .background(Color.white.cornerRadius(12))
        .background(RoundedRectangle(cornerRadius: 12).stroke(lineWidth: 1.0))
    }
}
// MARK: - PREVIEW
struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
