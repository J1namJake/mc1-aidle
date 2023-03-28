import SwiftUI

struct ContentView: View {
    var body: some View {
        let viewModel = StoryViewModel(scene: .first)
        return StoryView(viewModel: viewModel)
    }
}
