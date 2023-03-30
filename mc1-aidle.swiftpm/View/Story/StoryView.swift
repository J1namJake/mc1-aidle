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
                
                if let scene = viewModel.getCurrentScene() {
                    VStack {
                        if let options = (scene as? SelectionStoryScene)?.options {
                            optionsView(options: options)
                        }
                        
                        Spacer()
                        
                        if let dialogScene = scene as? DialogStorySceneable {
                            dialogView(scene: dialogScene)
                        }
                    }
                }
            }
        }
    }
    
    private func imageView(width: CGFloat) -> some View {
        Group {
            if let imageKey = viewModel.getImageKey() {
                Image(imageKey)
                    .resizable()
                    .scaledToFit()
                    .frame(width: width)
                    .onTapGesture {
                        viewModel.gotoNextScene()
                    }
            }
        }
    }
    
    private func optionsView(options: [SelectionStoryScene.Option]) -> some View {
        VStack {
            ForEach(options) { option in
                Button {
                    viewModel.gotoScene(of: option)
                } label: {
                    Text(option.text)
                        .padding()
                        .font(.title)
                        .background(
                            Capsule()
                                .fill(Color.accentColor)
                        )
                        .foregroundColor(.white)
                }
            }
            .font(.largeTitle)
        }
        .padding()
    }
    
    private func dialogView(scene: DialogStorySceneable) -> some View {
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
                    
                    if scene is ContinuousStorySceneable || scene is ContinuousNarrativeSceneable {
                        Text("Next")
                            .foregroundColor(.accentColor)
                    }
                }
            }
            .padding()
            .background(.black.opacity(0.5))
        }
        .padding()
        .onTapGesture {
            viewModel.gotoNextScene()
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = StoryViewModel(scene: StoryScene.Sample.general)
        return StoryView(viewModel: viewModel)
    }
}
