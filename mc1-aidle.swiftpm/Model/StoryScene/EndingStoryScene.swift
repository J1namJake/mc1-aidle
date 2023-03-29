//
//  EndingStoryScene.swift
//  mc1-aidle
//
//  Created by byo on 2023/03/28.
//

import Foundation

final class EndingStoryScene: StoryScene, DialogStorySceneable {
    let speaker: Speakerable
    let script: String
    
    init(imageKey: String? = nil,
         speaker: Speakerable,
         script: String) {
        self.speaker = speaker
        self.script = script
        super.init(imageKey: imageKey)
    }
}
