import SwiftUI

struct ContentView: View {
    var body: some View {
        let viewModel = NarrativeViewModel(scene: Profile.juju)
        return NarrativeView(viewModel: viewModel)
    }
}
