//
//  Profile.swift
//  mc1-aidle
//
//  Created by 박승찬 on 2023/03/28.
//

import Foundation

struct Profile {
    let chapter: String
    let title : String
    let imageKey : String
    let ability: [Ability]
    var levelUpdateFlag: Bool
    let levelUpdate: [LevelUpdate]?
    
    init(chapter: String, title: String, imageKey: String, ability: [Ability], levelUpdateFlag: Bool = false, levelUpdate: [LevelUpdate]? = nil) {
        self.chapter = chapter
        self.title = title
        self.imageKey = imageKey
        self.ability = ability
        self.levelUpdateFlag = levelUpdateFlag
        self.levelUpdate = levelUpdate
    }
    
}

extension Profile {
    final class Level : Identifiable {
        let imoge : String
        var count : Int
        
        init(imoge: String, count: Int) {
            self.imoge = imoge
            self.count = count
        }
        
    }
    
    final class Ability : Identifiable {
        let name : String
        let level : Level
        
        init(name: String, level: Level) {
            self.name = name
            self.level = level
        }
        
        func levelUpdate(levelUpdate : LevelUpdate){
            if self.name == levelUpdate.name{
                self.level.count += levelUpdate.updateCount
            }
        }
    }
    
    final class LevelUpdate : Identifiable{
        let name : String
        let updateCount : Int
        
        init(name: String, updateCount: Int) {
            self.name = name
            self.updateCount = updateCount
        }
    }
    
    
    
    static let juju = Profile(
        chapter: "Chapter.1", title: "숨막히는 첫만남", imageKey: "jujuTest", ability:[
            .init(name: "열정", level: .init(imoge: "🔥", count: 5)),
            .init(name: "발표", level: .init(imoge: "🌟", count: 2)),
            .init(name: "춤", level: .init(imoge: "⭐️", count: 5))
        ]
    )
    
    static let jujuDown = Profile(
        chapter: "", title: "", imageKey: "jujuTest", ability:[
            .init(name: "열정", level: .init(imoge: "🔥", count: 5)),
            .init(name: "발표", level: .init(imoge: "🌟", count: 2)),
            .init(name: "춤", level: .init(imoge: "⭐️", count: 5))
        ]
        ,levelUpdateFlag: true, levelUpdate: [
            
            .init(name: "열정", updateCount: -2)
            
        ]
    )
    
}
