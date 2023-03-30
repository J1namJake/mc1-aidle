import SwiftUI

struct ContentView: View {
    var body: some View {
        narrativeView()
    }
    
    private func narrativeView() -> some View {
        let viewModel = NarrativeViewModel(scene: Stage.Stage3.stage3)
        return NarrativeView(viewModel: viewModel)
    }
}
