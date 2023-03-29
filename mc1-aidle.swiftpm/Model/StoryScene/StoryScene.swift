//
//  StoryScene.swift
//  mc1-aidle
//
//  Created by byo on 2023/03/28.
//

import Foundation

class StoryScene {
    let imageKey: String?
    let speaker: Speakerable
    let script: String
    
    init(imageKey: String? = nil,
         speaker: Speakerable,
         script: String) {
        self.imageKey = imageKey
        self.speaker = speaker
        self.script = script
    }
}
