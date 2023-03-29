//
//  GeneralStoryScene.swift
//  mc1-aidle
//
//  Created by byo on 2023/03/28.
//

import Foundation

final class GeneralStoryScene: StoryScene {
    let nextScene: StoryScene
    
    init(imageKey: String? = nil,
         speaker: Speakerable,
         script: String,
         nextScene: StoryScene) {
        self.nextScene = nextScene
        super.init(imageKey: imageKey, speaker: speaker, script: script)
    }
}
