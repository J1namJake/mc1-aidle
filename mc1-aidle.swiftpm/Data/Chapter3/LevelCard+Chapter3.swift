//
//  File.swift
//  
//
//  Created by 예슬 on 2023/03/30.
//

import Foundation

extension LevelCard {
    enum Stage3 {
        static let suri = LevelCard(
            firstImageKey: "jujuLv1",
            secondImageKey: "jujuLv2",
            nextScene: StoryScene.Stage3.worry
        )
        
        static let theo = LevelCard(
            firstImageKey: "jujuLv1",
            secondImageKey: "jujuLv2",
            nextScene: nil
        )

    }
}
