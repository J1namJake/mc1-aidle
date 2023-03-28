import SwiftUI

struct ContentView: View {
    var body: some View {
        let viewModel = StoryViewModel()
        return StoryView(viewModel: viewModel)
    }
}
