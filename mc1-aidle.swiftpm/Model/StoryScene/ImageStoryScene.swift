//
//  ImageStoryScene.swift
//  mc1-aidle
//
//  Created by byo on 2023/03/29.
//

import Foundation

final class ImageStoryScene: StoryScene, ContinuousStorySceneable {
    let nextScene: StorySceneable
    
    init(imageKey: String? = nil,
         nextScene: StoryScene) {
        self.nextScene = nextScene
        super.init(imageKey: imageKey)
    }
}
