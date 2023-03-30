//
//  GeneralStoryScene.swift
//  mc1-aidle
//
//  Created by byo on 2023/03/28.
//

import Foundation

final class GeneralStoryScene: StoryScene, DialogStorySceneable, ContinuousStorySceneable {
    let speaker: Speakerable
    let script: String
    let nextScene: StorySceneable
    
    init(image: ImageData? = nil,
         speaker: Speakerable,
         script: String,
         nextScene: StoryScene) {
        self.speaker = speaker
        self.script = script
        self.nextScene = nextScene
        super.init(image: image)
    }
}
