//
//  Profile.swift
//  mc1-aidle
//
//  Created by 박승찬 on 2023/03/28.
//

import Foundation

class Profile: NarrativeSceneable, ContinuousNarrativeSceneable {
    let chapter: String
    let title : String
    let imageKey : String
    let ability: [Ability]
    let animate: Profile?
    let nextScene: NarrativeSceneable?
    
    init(chapter: String, title: String, imageKey: String, ability: [Ability], animate: Profile? = nil, nextScene: NarrativeSceneable?) {
        self.chapter = chapter
        self.title = title
        self.imageKey = imageKey
        self.ability = ability
        self.animate = animate
        self.nextScene = nextScene
    }
    
}

extension Profile {
    final class Ability : Identifiable {
        let name : String
        let level : String
        
        init(name: String, level: String) {
            self.name = name
            self.level = level
        }
    }
    
    static let juju = Profile(
        chapter: "Chapter.1", title: "숨막히는 첫만남", imageKey: "juju", ability:[
            .init(name: "열정", level: "🔥🔥🔥🔥🔥"),
            .init(name: "발표", level: "🌟🌟"),
            .init(name: "춤", level: "⭐️⭐️⭐️⭐️⭐️")
        ],
        nextScene: StoryScene.first
    )
    
    static let byo = Profile(
        chapter: "Chapter.2", title: "스크래치", imageKey: "juju", ability:[
            .init(name: "열정", level: "🔥🔥🔥🔥🔥"),
            .init(name: "발표", level: "🌟🌟"),
            .init(name: "춤", level: "⭐️⭐️⭐️⭐️⭐️")
        ],
        nextScene: nil
    )
}
