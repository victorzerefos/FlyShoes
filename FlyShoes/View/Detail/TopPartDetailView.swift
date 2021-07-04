//
//  TopPartDetailView.swift
//  FlyShoes
//
//  Created by Victor Zerefos on 04/07/21.
//

import SwiftUI

struct TopPartDetailView: View {
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            //: - PRICE
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })
            .offset(y: isAnimating ? -50 : -75)
            Spacer()
            //: - PHOTO
            Image(sampleProduct.image)
                .resizable()
                .scaledToFit()
                .padding()
                .offset(y: isAnimating ? 0 : -35)
        }) //: - HSTACK
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
