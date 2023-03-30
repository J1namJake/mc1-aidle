//
//  EndingStoryScene.swift
//  mc1-aidle
//
//  Created by byo on 2023/03/28.
//

import Foundation

final class EndingStoryScene: StoryScene, DialogStorySceneable, ContinuousNarrativeSceneable {
    let speaker: Speakerable?
    let script: String
    let nextScene: NarrativeSceneable?
    
    init(image: ImageData? = nil,
         audioKey: String? = nil,
         speaker: Speakerable? = nil,
         script: String,
         nextScene: NarrativeSceneable?) {
        self.speaker = speaker
        self.script = script
        self.nextScene = nextScene
        super.init(image: image, audioKey: audioKey)
    }
}
