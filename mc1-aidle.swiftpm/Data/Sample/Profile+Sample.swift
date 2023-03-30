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
            level: "Chapter 1",
            name: "a sample",
            imageKey: "",
            ability: [],
            nextScene: StoryScene.Sample.hi
        )
        
        static let chapter2 = Profile(
            level: "Chapter 2",
            name: "a sample too",
            imageKey: "",
            ability: [],
            nextScene: nil
        )
    }
}
