//
//  NarrativeScene+Protocol.swift
//  mc1-aidle
//
//  Created by byo on 2023/03/29.
//

import Foundation

protocol NarrativeSceneable: AnyObject {
}

protocol ContinuousNarrativeSceneable: NarrativeSceneable {
    var nextScene: NarrativeSceneable? { get }
}

protocol AudioNarrativeSceneable: NarrativeSceneable {
    var audioKey: String? { get }
}
