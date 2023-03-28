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
        GeometryReader { geometry in
            ZStack {
                imageView(width: geometry.size.width)
                
                if let scene = viewModel.scene {
                    VStack {
                        optionsView(scene: scene)
                        Spacer()
                        dialogView(scene: scene)
                    }
                }
            }
        }
    }
    
    private func imageView(width: CGFloat) -> some View {
        Group {
            if let imageKey = viewModel.imageKey {
                Image(imageKey)
                    .resizable()
                    .scaledToFit()
                    .frame(width: width)
            }
        }
    }
    
    private func optionsView(scene: StoryScene) -> some View {
        Group {
            if let options = (scene as? StorySceneHasOptions)?.options {
                List {
                    ForEach(options) { option in
                        Button(option.text) {
                            viewModel.gotoScene(of: option)
                        }
                    }
                }
                .font(.largeTitle)
            }
        }
    }
    
    private func dialogView(scene: StoryScene) -> some View {
        VStack(spacing: 0) {
            HStack {
                Text(scene.speaker.name)
                    .font(.headline)
                    .background(.black)
                    .foregroundColor(.white)
                
                Spacer()
            }
            
            VStack {
                Text(scene.script)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.white)
                
                HStack {
                    Spacer()
                    if scene is GeneralStoryScene {
                        Button("Next") {
                            viewModel.gotoNextScene()
                        }
                    }
                }
            }
            .padding()
            .background(.black.opacity(0.5))
        }
        .padding()
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = StoryViewModel(scene: .first)
        return StoryView(viewModel: viewModel)
    }
}
