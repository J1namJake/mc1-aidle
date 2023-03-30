//
//  NarrativeView.swift
//  mc1-aidle
//
//  Created by byo on 2023/03/29.
//

import SwiftUI

struct NarrativeView: View {
    @ObservedObject var viewModel: NarrativeViewModel
    
    var body: some View {
        Group {
            switch viewModel.getCurrentScene() {
            case let profile as Profile:
                profileView(profile: profile)
            case let storyScene as StoryScene:
                storyView(scene: storyScene)
            default:
                Text("끝")
            }
        }
    }
    
    private func profileView(profile: Profile) -> some View {
        let viewModel = ProfileCardViewModel(profile: profile)
        viewModel.delegate = self.viewModel
        return ProfileCardView(viewModel: viewModel)
    }
    
    private func storyView(scene: StoryScene) -> some View {
        let viewModel = StoryViewModel(scene: scene)
        viewModel.delegate = self.viewModel
        return StoryView(viewModel: viewModel)
    }
}

struct NarrativeView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = NarrativeViewModel(scene: Profile.Sample.chapter1)
        return NarrativeView(viewModel: viewModel)
    }
}
