//
//  StageViewModel.swift
//  mc1-aidle
//
//  Created by 박승찬 on 2023/03/30.
//

import Foundation

protocol StageViewModelDelegate: AnyObject {
    func stageDidEnd(nextScene: NarrativeSceneable?)
}

class StageViewModel : ObservableObject{
    @Published var stage: Stage?
    
    weak var delegate: StageViewModelDelegate?
    
    init(stage: Stage? = nil) {
        self.stage = stage
    }
    
    func gotoNextScene() {
        delegate?.stageDidEnd(nextScene: stage?.nextScene)
    }
}
