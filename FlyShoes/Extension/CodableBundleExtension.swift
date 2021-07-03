//
//  CodableBundleExtension.swift
//  FlyShoes
//
//  Created by Victor Zerefos on 02/07/21.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        //: - Locate the JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        //: - Create a property for the DATA
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        
        //: - Create a DECODER
        let decoder = JSONDecoder()
        
        //: - Create a property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        
        //: - Return the ready-to-use data
        
        return loaded
    }
}
