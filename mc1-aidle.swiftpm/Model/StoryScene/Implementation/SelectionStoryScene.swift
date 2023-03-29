//
//  SelectionStoryScene.swift
//  mc1-aidle
//
//  Created by byo on 2023/03/28.
//

import Foundation

final class SelectionStoryScene: StoryScene, DialogStorySceneable {
    let speaker: Speakerable
    let script: String
    let options: [Option]
    
    init(imageKey: String? = nil,
         speaker: Speakerable,
         script: String,
         options: [Option]) {
        self.speaker = speaker
        self.script = script
        self.options = options
        super.init(imageKey: imageKey)
    }
}

extension SelectionStoryScene {
    final class Option: Identifiable {
        let text: String
        let nextScene: StorySceneable?
        
        init(text: String,
             nextScene: StoryScene?) {
            self.text = text
            self.nextScene = nextScene
        }
    }
}
