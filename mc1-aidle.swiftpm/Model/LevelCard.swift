//
//  LevelCard.swift
//  mc1-aidle
//
//  Created by byo on 2023/03/30.
//

import Foundation

class LevelCard: NarrativeSceneable, ContinuousNarrativeSceneable {
    let firstImageKey: String
    let secondImageKey: String
    let nextScene: NarrativeSceneable?
    
    init(firstImageKey: String,
         secondImageKey: String,
         nextScene: NarrativeSceneable?) {
        self.firstImageKey = firstImageKey
        self.secondImageKey = secondImageKey
        self.nextScene = nextScene
    }
}
