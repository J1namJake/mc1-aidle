//
//  ProfileCard.swift
//  mc1-aidle
//
//  Created by 박승찬 on 2023/03/28.
//

import SwiftUI

struct ProfileCardView: View {
    @ObservedObject var viewModel: ProfileCardViewModel
    
    var body: some View {
        VStack{
            if let profile = viewModel.profile {
                Text(profile.chapter)
                Text(profile.title)
                Image("")
                abilityView(profile: profile)
                Button("Next(test)") {
                    viewModel.gotoNextScene()
                }
            }
        }
        
    }
    
    private func abilityView(profile: Profile) -> some View {
        VStack{
            ForEach(profile.ability) { ability in
                HStack{
                    Text(ability.name)
                    Text(ability.level)
                }
            }
        }
    }
}

struct ProfileCard_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = ProfileCardViewModel(profile: .juju)
        return ProfileCardView(viewModel: viewModel)
    }
}
