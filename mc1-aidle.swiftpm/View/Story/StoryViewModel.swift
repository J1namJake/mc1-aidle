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
            setImage(scene: currentScene)
            audioPlayer.stop()
            tryToPlayAudio(scene: currentScene)
        }
    }
    
    @Published private var image: ImageData?
    
    private let audioPlayer: AudioPlayer
    
    weak var delegate: StoryViewModelDelegate?
    
    init(scene: StoryScene,
         audioPlayer: AudioPlayer = .shared) {
        self.currentScene = scene
        self.audioPlayer = audioPlayer
    }
    
    func getCurrentScene() -> StorySceneable? {
        currentScene
    }
    
    func getImage() -> ImageData? {
        image
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
    
    private func setImage(scene: StorySceneable?) {
        guard let image = scene?.image else {
            return
        }
        self.image = image
    }
    
    private func tryToPlayAudio(scene: StorySceneable?) {
        guard let audioScene = scene as? AudioNarrativeSceneable,
              let audioKey = audioScene.audioKey else {
            return
        }
        audioPlayer.play(key: audioKey)
    }
}
