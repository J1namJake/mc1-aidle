//
//  NarrativeViewModel.swift
//  mc1-aidle
//
//  Created by byo on 2023/03/29.
//

import SwiftUI

final class NarrativeViewModel: ObservableObject {
    private let initialScene: NarrativeSceneable
    @Published private var currentScene: NarrativeSceneable?
    
    init(scene: NarrativeSceneable) {
        self.initialScene = scene
        self.currentScene = scene
    }
    
    func getCurrentScene() -> NarrativeSceneable? {
        currentScene
    }
}

extension NarrativeViewModel: StageViewModelDelegate {
    func stageDidEnd(nextScene: NarrativeSceneable?) {
        withAnimation {
            currentScene = nextScene
        }
    }
}

extension NarrativeViewModel: ProfileCardViewModelDelegate {
    func profileCardDidEnd() {
        guard let scene = currentScene as? ContinuousNarrativeSceneable else {
            return
        }
        withAnimation {
            currentScene = scene.nextScene
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

extension NarrativeViewModel: LevelCardViewDelegate {
    func levelCardDidEnd() {
        guard let scene = currentScene as? ContinuousNarrativeSceneable else {
            return
        }
        withAnimation {
            currentScene = scene.nextScene
        }
    }
}

extension NarrativeViewModel: RestartViewDelegate {
    func restartDidEnd() {
        withAnimation {
            currentScene = initialScene
        }
    }
}
