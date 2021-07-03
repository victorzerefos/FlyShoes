//
//  ProductItemView.swift
//  FlyShoes
//
//  Created by Victor Zerefos on 03/07/21.
//

import SwiftUI

struct ProductItemView: View {
    // MARK: - PROPERTIES
    let product: Product
    
    var body: some View {
        // MARK: - BODY
        
        VStack(alignment: .leading, spacing: 6, content: {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
                    .frame(width: 135, height: 100, alignment: .center)
                    .padding()
            } //: - ZSTACK
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
        }) //: - VSTACK
        .background(colorBackground.cornerRadius(12))
        .background(
            RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 0)
        )
    }
    
    
    
}
// MARK: - PREVIEW
struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[2])
            .previewLayout(.fixed(width: 200, height: 300))
            .background(colorBackground)
            .padding()
    }
}
