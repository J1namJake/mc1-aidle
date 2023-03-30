//
//  Profile+Sample.swift
//  mc1-aidle
//
//  Created by byo on 2023/03/30.
//

import Foundation

extension Profile {
    enum Sample {
        static let chapter1 = Profile(
            chapter: "Chapter 1",
            title: "it's a sample",
            imageKey: "sample_너굴맨",
            ability: [],
            nextScene: StoryScene.Sample.hi
        )
        
        static let chapter2 = Profile(
            chapter: "Sample Chapter 2",
            title: "it's a sample too",
            imageKey: "",
            ability: [],
            nextScene: nil
        )
    }
}
