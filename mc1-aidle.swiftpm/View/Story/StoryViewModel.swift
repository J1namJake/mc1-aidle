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
        scene = scene?.nextScene
    }
}
