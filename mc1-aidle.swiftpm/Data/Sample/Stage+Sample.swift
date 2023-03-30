//
//  Stage+Sample.swift
//  mc1-aidle
//
//  Created by byo on 2023/03/30.
//

import Foundation

extension Stage {
    enum Sample {
        static let first = Stage(
            stageNum: "Chapter 1",
            title: "시나리오 집어넣기",
            titleImageKey: "stage1Image",
            audioKey: "불타는소리",
            nextScene: StoryScene.Sample.hi
        )
        
        static let second = Stage(
            stageNum: "Chapter 2",
            title: "실습 ㄱㄱ",
            titleImageKey: "stage1Image",
            nextScene: nil
        )
    }
}
