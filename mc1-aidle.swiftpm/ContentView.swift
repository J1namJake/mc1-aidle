import SwiftUI

struct ContentView: View {
    var body: some View {
        let viewModel = ScriptViewModel()
        return ScriptView(viewModel: viewModel)
    }
}
