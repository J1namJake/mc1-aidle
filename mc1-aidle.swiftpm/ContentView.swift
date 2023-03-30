import SwiftUI

struct ContentView: View {
    var body: some View {
        narrativeView()
    }
    
    private func narrativeView() -> some View {
        let viewModel = NarrativeViewModel(scene: Stage.Stage4.first4)
        return NarrativeView(viewModel: viewModel)
    }
}
