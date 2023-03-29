//
//  StoryViewModel.swift
//  
//
//  Created by byo on 2023/03/28.
//

import Foundation

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
        guard let generalScene = scene as? ContinuousStorySceneable else {
            return
        }
        scene = generalScene.nextScene
    }
    
    func gotoScene(of option: SelectionStoryScene.Option) {
        guard let nextScene = option.nextScene else {
            return
        }
        scene = nextScene
    }
}
