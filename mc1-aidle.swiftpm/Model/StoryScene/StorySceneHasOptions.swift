//
//  StorySceneHasOptions.swift
//  mc1-aidle
//
//  Created by byo on 2023/03/28.
//

import Foundation

final class StorySceneHasOptions: StoryScene {
    let options: [Option]
    
    init(speaker: Speakerable,
         script: String,
         options: [Option]) {
        self.options = options
        super.init(speaker: speaker, script: script)
    }
}

extension StorySceneHasOptions {
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
