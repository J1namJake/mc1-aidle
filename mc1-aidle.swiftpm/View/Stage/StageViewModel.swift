//
//  StageViewModel.swift
//  mc1-aidle
//
//  Created by 박승찬 on 2023/03/30.
//

import Foundation

class StageViewModel : ObservableObject{
    @Published var stage: Stage?
    
    init(stage: Stage? = nil) {
        self.stage = stage
    }
}
