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
    
    init(speaker: Speakerable,
         script: String) {
        self.speaker = speaker
        self.script = script
    }
}
