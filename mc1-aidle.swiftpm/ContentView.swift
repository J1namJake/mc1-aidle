import SwiftUI

struct ContentView: View {
    var body: some View {
        narrativeView()
    }
    
    private func narrativeView() -> some View {
        let viewModel = NarrativeViewModel(scene: Profile.Sample.chapter1)
        return NarrativeView(viewModel: viewModel)
    }
}
