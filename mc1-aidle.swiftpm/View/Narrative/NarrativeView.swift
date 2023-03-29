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
        ZStack {
            storyView()
        }
    }
    
    private func storyView() -> some View {
        let viewModel = StoryViewModel(scene: .first)
        return StoryView(viewModel: viewModel)
    }
}

struct NarrativeView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = NarrativeViewModel()
        return NarrativeView(viewModel: viewModel)
    }
}
