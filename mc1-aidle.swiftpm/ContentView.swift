import SwiftUI

struct ContentView: View {
    var body: some View {
        let viewModel = NarrativeViewModel()
        return NarrativeView(viewModel: viewModel)
    }
}
