//
//  Stage.swift
//  mc1-aidle
//
//  Created by 박승찬 on 2023/03/30.
//

import Foundation

class Stage: NarrativeSceneable, ContinuousNarrativeSceneable, AudioNarrativeSceneable {
    let stageNum : String
    let title : String
    let titleImageKey : String
    let audioKey: String?
    let nextScene: NarrativeSceneable?
    
    init(stageNum: String,
         title: String,
         titleImageKey: String,
         audioKey: String? = nil,
         nextScene: NarrativeSceneable?) {
        self.stageNum = stageNum
        self.title = title
        self.titleImageKey = titleImageKey
        self.audioKey = audioKey
        self.nextScene = nextScene
    }
}

extension Stage {
    static let title1 = Stage(
        stageNum: "Stage1", title: "숨막히는 첫 만남", titleImageKey: "stage1Image", nextScene: nil
    )
    
}
