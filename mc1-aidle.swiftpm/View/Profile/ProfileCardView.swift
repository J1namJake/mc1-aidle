//
//  ProfileCard.swift
//  mc1-aidle
//
//  Created by 박승찬 on 2023/03/28.
//

import SwiftUI

struct ProfileCardView: View {
    
    var viewModel: ProfileCardViewModel
    
    var body: some View {
        VStack{
            if let profile = viewModel.profile {
                Text("Chapter."+String(profile.chapter))
                Text(profile.title)
                Image("")
                HStack{
                    Text(profile.ability[0])
                    Text(profile.abilityLebel[0])
                }
                HStack{
                    Text(profile.ability[1])
                    Text(profile.abilityLebel[1])
                }
                HStack{
                    Text(profile.ability[2])
                    Text(profile.abilityLebel[2])
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
