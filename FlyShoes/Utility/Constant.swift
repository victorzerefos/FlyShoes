//
//  Constant.swift
//  FlyShoes
//
//  Created by Victor Zerefos on 02/07/21.
//

import SwiftUI

//: - DATA
let sports: [Sport] = Bundle.main.decode("sports.json")
let categories: [Category] = Bundle.main.decode("category.json")
//: - COLOR
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray3)
//: - LAYOUT

let colunmSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
//: - UX

