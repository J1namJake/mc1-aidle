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
        .ignoresSafeArea()
    }
    
    private func imageView(width: CGFloat) -> some View {
        Group {
            if let imageKey = viewModel.getImageKey() {
                Image(imageKey)
                    .resizable()
                    .scaledToFit()
                    .frame(width: width)
                    .animation(.easeInOut, value: imageKey)
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
                        .frame(height: 75)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 32)
                        .font(.system(size: 24))
                        .foregroundColor(.black)
                }
                .background(
                    Image("layout_option")
                        .resizable()
                )
            }
        }
        .padding(.top, 64)
        .padding(.horizontal, 20)
    }
    
    private func dialogView(scene: DialogStorySceneable) -> some View {
        VStack(spacing: 0) {
            HStack {
                Text(scene.speaker.name)
                    .frame(height: 64)
                    .padding(.horizontal, 24)
                    .font(.system(size: 30))
                    .background(.white)
                    .border(.black, width: 5)
                    .offset(y: 5)
                Spacer()
            }
            
            VStack {
                Text(scene.script)
                    .font(.system(size: 24))
                    .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
            }
            .padding(32)
            .frame(height: 311)
            .background(
                Image("layout_dialog")
                    .resizable()
            )
        }
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
