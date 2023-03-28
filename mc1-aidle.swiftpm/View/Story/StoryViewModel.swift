//
//  StoryViewModel.swift
//  
//
//  Created by byo on 2023/03/28.
//

import Foundation

class StoryViewModel: ObservableObject {
    @Published var scene: StoryScene?
    
    init(scene: StoryScene) {
        self.scene = scene
    }
    
    func gotoNextScene() {
        guard let generalScene = scene as? GeneralStoryScene else {
            return
        }
        scene = generalScene.nextScene
    }
    
    func gotoScene(of option: StorySceneHasOptions.Option) {
        guard let nextScene = option.nextScene else {
            return
        }
        scene = nextScene
    }
}
