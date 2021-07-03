//
//  LogoView.swift
//  FlyShoes
//
//  Created by Victor Zerefos on 02/07/21.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 4) {
            
            Text("flying".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
    
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50, alignment: .center)
            
            Text("shoes".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
        } //: - HSTACK
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
