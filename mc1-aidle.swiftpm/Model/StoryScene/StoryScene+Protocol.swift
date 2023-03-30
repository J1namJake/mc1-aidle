//
//  StoryScene+Protocol.swift
//  mc1-aidle
//
//  Created by byo on 2023/03/28.
//

import Foundation

protocol StorySceneable: AnyObject {
    var imageKey: String? { get }
}

protocol DialogStorySceneable: StorySceneable {
    var speaker: Speakerable { get }
    var script: String { get }
}

protocol ContinuousStorySceneable: StorySceneable {
    var nextScene: StorySceneable { get }
}
