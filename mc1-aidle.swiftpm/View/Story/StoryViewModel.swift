//
//  StoryViewModel.swift
//  
//
//  Created by byo on 2023/03/28.
//

import Foundation

protocol StoryViewModelDelegate: AnyObject {
    func storyDidEnd(nextScene: NarrativeSceneable?)
}

class StoryViewModel: ObservableObject {
    @Published private var currentScene: StorySceneable? {
        didSet {
            guard let imageKey = currentScene?.imageKey else {
                return
            }
            self.imageKey = imageKey
        }
    }
    
    @Published private var imageKey: String?
    
    weak var delegate: StoryViewModelDelegate?
    
    init(scene: StoryScene) {
        self.currentScene = scene
    }
    
    func getCurrentScene() -> StorySceneable? {
        currentScene
    }
    
    func getImageKey() -> String? {
        imageKey
    }
    
    func gotoNextScene() {
        switch currentScene {
        case let storyScene as ContinuousStorySceneable:
            currentScene = storyScene.nextScene
        case let narrativeScene as ContinuousNarrativeSceneable:
            delegate?.storyDidEnd(nextScene: narrativeScene.nextScene)
        default:
            break
        }
    }
    
    func gotoScene(of option: SelectionStoryScene.Option) {
        guard let nextScene = option.nextScene else {
            return
        }
        currentScene = nextScene
    }
}
