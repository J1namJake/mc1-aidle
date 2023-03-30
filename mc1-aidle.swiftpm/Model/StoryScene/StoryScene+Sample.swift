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
        speaker: Learner.juju,
        script: "안녕하세요",
        nextScene: .second
    )
    
    static let second = GeneralStoryScene(
        speaker: ExtraSpeaker.teamMembers,
        script: "아 네 안녕하세요",
        nextScene: .options
    )
    
    static let options = SelectionStoryScene(
        speaker: Learner.byo,
        script: "나도 인사할까",
        options: [
            .init(text: "인사하자", nextScene: .yes),
            .init(text: "하지말자", nextScene: .no)
        ]
    )
    
    static let yes = GeneralStoryScene(
        imageKey: "ajtmr",
        speaker: Learner.byo,
        script: "ㅎㅇ",
        nextScene: .hihi
    )
    
    static let no = EndingStoryScene(
        imageKey: "ajtmr",
        speaker: Learner.byo,
        script: "...",
        nextScene: nil
    )
    
    static let hihi = EndingStoryScene(
        imageKey: "meeting",
        speaker: ExtraSpeaker.teamMembers,
        script: "ㅎㅇㅎㅇ",
        nextScene: Profile.byo
    )
}
