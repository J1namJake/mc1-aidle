//
//  LevelCard+Sample.swift
//  mc1-aidle
//
//  Created by byo on 2023/03/30.
//

import Foundation

extension LevelCard {
    enum Sample {
        static let juju = LevelCard(
            firstImageKey: "jujuLv1",
            secondImageKey: "jujuLv2",
            nextScene: Stage.Sample.second
        )
    }
}
