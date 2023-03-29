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
    @Published private var scene: StorySceneable? {
        didSet {
            guard let imageKey = scene?.imageKey else {
                return
            }
            self.imageKey = imageKey
        }
    }
    
    @Published private var imageKey: String?
    
    weak var delegate: StoryViewModelDelegate?
    
    init(scene: StoryScene) {
        self.scene = scene
    }
    
    func getScene() -> StorySceneable? {
        scene
    }
    
    func getImageKey() -> String? {
        imageKey
    }
    
    func gotoNextScene() {
        if let storyScene = scene as? ContinuousStorySceneable {
            scene = storyScene.nextScene
        } else if let narrativeScene = scene as? ContinuousNarrativeSceneable {
            delegate?.storyDidEnd(nextScene: narrativeScene.nextScene)
        }
    }
    
    func gotoScene(of option: SelectionStoryScene.Option) {
        guard let nextScene = option.nextScene else {
            return
        }
        scene = nextScene
    }
}
