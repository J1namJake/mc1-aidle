//
//  StoryScene.swift
//  mc1-aidle
//
//  Created by byo on 2023/03/28.
//

import Foundation

class StoryScene {
    let speaker: Speakerable
    let script: String
    let nextScene: StoryScene?
    
    init(speaker: Speakerable,
         script: String,
         nextScene: StoryScene? = nil) {
        self.speaker = speaker
        self.script = script
        self.nextScene = nextScene
    }
}

extension StoryScene {
    static let first = StoryScene(
        speaker: Learner.juju,
        script: "안녕하세요",
        nextScene: .second
    )
    
    static let second = StoryScene(
        speaker: ExtraSpeaker.teamMembers,
        script: "아 네 안녕하세요"
    )
}
