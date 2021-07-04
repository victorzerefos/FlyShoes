//
//  Shop.swift
//  FlyShoes
//
//  Created by Victor Zerefos on 04/07/21.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product?
}
