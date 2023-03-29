//
//  StoryScene+Sample.swift
//  mc1-aidle
//
//  Created by byo on 2023/03/28.
//

import Foundation

extension StoryScene {
    static let first = GeneralStoryScene(
        imageKey: "meeting",
        speaker: Learner.byo,
        script: "안녕하세요",
        nextScene: .second
    )
    
    static let second = GeneralStoryScene(
        speaker: ExtraSpeaker.teamMembers,
        script: "아 네 안녕하세요",
        nextScene: .options
    )
    
    static let options = StorySceneWithOptions(
        speaker: Learner.byo,
        script: "나도 인사할까",
        options: [
            .init(text: "인사하자", nextScene: .yes),
            .init(text: "하지말자", nextScene: .no)
        ]
    )
    
    static let yes = GeneralStoryScene(
        speaker: Learner.byo,
        script: "ㅎㅇ",
        nextScene: .hihi
    )
    
    static let no = EndingStoryScene(
        imageKey: "ajtmr",
        speaker: Learner.byo,
        script: "..."
    )
    
    static let hihi = EndingStoryScene(
        speaker: ExtraSpeaker.teamMembers,
        script: "ㅎㅇㅎㅇ"
    )
}
