//
//  NarrativeViewModel.swift
//  mc1-aidle
//
//  Created by byo on 2023/03/29.
//

import SwiftUI

final class NarrativeViewModel: ObservableObject {
    @Published private var currentScene: NarrativeSceneable?
    
    init(scene: NarrativeSceneable) {
        self.currentScene = scene
    }
    
    func getCurrentScene() -> NarrativeSceneable? {
        currentScene
    }
}

extension NarrativeViewModel: ProfileCardViewModelDelegate {
    func profileCardDidEnd() {
        guard let continousScene = currentScene as? ContinuousNarrativeSceneable else {
            return
        }
        withAnimation {
            currentScene = continousScene.nextScene
        }
    }
}

extension NarrativeViewModel: StoryViewModelDelegate {
    func storyDidEnd(nextScene: NarrativeSceneable?) {
        withAnimation {
            currentScene = nextScene
        }
    }
}

extension NarrativeViewModel: RestartViewDelegate {
    func restartDidEnd() {
        
        withAnimation {
            currentScene = Profile.juju
        }
    }
}
