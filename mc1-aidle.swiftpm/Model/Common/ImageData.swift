//
//  ImageData.swift
//  mc1-aidle
//
//  Created by byo on 2023/03/30.
//

import Foundation

struct ImageData: Equatable {
    let key: String
    let isGif: Bool
    
    init(key: String, isGif: Bool = false) {
        self.key = key
        self.isGif = isGif
    }
}
