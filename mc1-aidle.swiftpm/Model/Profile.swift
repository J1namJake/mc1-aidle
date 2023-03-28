//
//  Profile.swift
//  mc1-aidle
//
//  Created by 박승찬 on 2023/03/28.
//

import Foundation

class Profile {
    let chapter: Int
    let title : String
    let ability: [String]
    let abilityLebel: [String]
    
    init(chapter: Int, title: String, ability: [String], abilityLebel: [String]) {
        self.chapter = chapter
        self.title = title
        self.ability = ability
        self.abilityLebel = abilityLebel
    }
}

extension Profile {
    static let juju = Profile(
        chapter: 1, title: "숨막히는 첫만남",ability: ["열정","발표","춤"], abilityLebel: ["🔥🔥🔥🔥🔥","🌟🌟","⭐️⭐️⭐️⭐️⭐️"])
}
