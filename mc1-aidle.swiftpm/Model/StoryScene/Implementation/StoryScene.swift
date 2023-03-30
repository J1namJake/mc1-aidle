//
//  StoryScene.swift
//  mc1-aidle
//
//  Created by byo on 2023/03/29.
//

import Foundation

class StoryScene: StorySceneable, NarrativeSceneable, AudioNarrativeSceneable {
    let image: ImageData?
    let audioKey: String?
    
    init(image: ImageData? = nil,
         audioKey: String? = nil) {
        self.image = image
        self.audioKey = audioKey
    }
}
