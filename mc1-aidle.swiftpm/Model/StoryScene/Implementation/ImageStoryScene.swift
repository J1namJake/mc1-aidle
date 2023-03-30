//
//  ImageStoryScene.swift
//  mc1-aidle
//
//  Created by byo on 2023/03/29.
//

import Foundation

final class ImageStoryScene: StoryScene, ContinuousStorySceneable {
    let nextScene: StorySceneable
    
    init(image: ImageData? = nil,
         audioKey: String? = nil,
         nextScene: StorySceneable) {
        self.nextScene = nextScene
        super.init(image: image, audioKey: audioKey)
    }
}
