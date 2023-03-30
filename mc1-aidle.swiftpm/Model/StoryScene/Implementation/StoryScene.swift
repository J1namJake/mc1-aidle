//
//  StoryScene.swift
//  mc1-aidle
//
//  Created by byo on 2023/03/29.
//

import Foundation

class StoryScene: StorySceneable, NarrativeSceneable {
    let imageKey: String?
    
    init(imageKey: String? = nil) {
        self.imageKey = imageKey
    }
}
