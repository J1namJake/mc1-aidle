//
//  Profile.swift
//  mc1-aidle
//
//  Created by 박승찬 on 2023/03/28.
//

import Foundation

class Profile: NarrativeSceneable, ContinuousNarrativeSceneable {
    let level: String
    let name : String
    let imageKey : String
    let ability: [Ability]
    let levelUpdate: [LevelUpdate]?
    let nextScene: NarrativeSceneable?
    
    init(level: String, name: String, imageKey: String, ability: [Ability], levelUpdate: [LevelUpdate]? = nil, nextScene: NarrativeSceneable?) {
        self.level = level
        self.name = name
        self.imageKey = imageKey
        self.ability = ability
        self.levelUpdate = levelUpdate
        self.nextScene = nextScene
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
        level: "1", name: "JUJU", imageKey: "jujuTest", ability:[
            .init(name: "체력", level: .init(imoge: "🔥", count: 5)),
            .init(name: "발표", level: .init(imoge: "🌟", count: 2)),
            .init(name: "춤", level: .init(imoge: "⭐️", count: 5))
        ],
        levelUpdate: [

            .init(name: "열정", updateCount: -2)
            
        ],
        nextScene: nil
    )
    
}
