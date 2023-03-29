//
//  StorySceneWithOptions.swift
//  mc1-aidle
//
//  Created by byo on 2023/03/28.
//

import Foundation

final class StorySceneWithOptions: StoryScene {
    let options: [Option]
    
    init(imageKey: String? = nil,
         speaker: Speakerable,
         script: String,
         options: [Option]) {
        self.options = options
        super.init(imageKey: imageKey, speaker: speaker, script: script)
    }
}

extension StorySceneWithOptions {
    final class Option: Identifiable {
        let text: String
        let nextScene: StoryScene?
        
        init(text: String,
             nextScene: StoryScene?) {
            self.text = text
            self.nextScene = nextScene
        }
    }
}
