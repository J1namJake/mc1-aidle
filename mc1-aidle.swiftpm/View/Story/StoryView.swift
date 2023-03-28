//
//  StoryView.swift
//  
//
//  Created by byo on 2023/03/28.
//

import SwiftUI

struct StoryView: View {
    @ObservedObject var viewModel: StoryViewModel
    
    var body: some View {
        VStack {
            if let scene = viewModel.scene {
                Text(scene.speaker.name)
                Text(scene.script)
                
                if let options = (scene as? StorySceneHasOptions)?.options {
                    ForEach(options) { option in
                        Button(option.text) {
                            viewModel.gotoScene(of: option)
                        }
                    }
                    
                } else if scene is GeneralStoryScene {
                    Button("Next") {
                        viewModel.gotoNextScene()
                    }
                }
            }
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = StoryViewModel(scene: .first)
        return StoryView(viewModel: viewModel)
    }
}
