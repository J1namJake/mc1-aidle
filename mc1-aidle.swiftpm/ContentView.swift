import SwiftUI

struct ContentView: View {
    var body: some View {
        //let viewModel = StoryViewModel(scene: .first)
        //return StoryView(viewModel: viewModel)
        let viewModel = ProfileCardViewModel(profile: .jujuDown)
        return ProfileCardView(viewModel: viewModel)
        
    }
}
