//
//  NarrativeViewModel.swift
//  mc1-aidle
//
//  Created by byo on 2023/03/29.
//

import Foundation

final class NarrativeViewModel: ObservableObject {
    @Published private var scene: NarrativeSceneable?
    
    init(scene: NarrativeSceneable) {
        self.scene = scene
    }
    
    func getScene() -> NarrativeSceneable? {
        scene
    }
}

extension NarrativeViewModel: ProfileCardViewModelDelegate {
    func profileCardDidEnd() {
        guard let continousScene = scene as? ContinuousNarrativeSceneable else {
            return
        }
        scene = continousScene.nextScene
    }
}

extension NarrativeViewModel: StoryViewModelDelegate {
    func storyDidEnd(nextScene: NarrativeSceneable?) {
        scene = nextScene
    }
}
