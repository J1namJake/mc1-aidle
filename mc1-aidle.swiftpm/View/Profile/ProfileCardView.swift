//
//  ProfileCard.swift
//  mc1-aidle
//
//  Created by 박승찬 on 2023/03/28.
//

import SwiftUI

struct ProfileCardView: View {
    
    @State private var fadeInOut = false
    
    @ObservedObject var viewModel: ProfileCardViewModel
    
    var body: some View {
        ZStack{
            Color.backgroundColor.ignoresSafeArea()
            VStack{
                if let profile = viewModel.profile {
                    Text(profile.chapter)
                    Text(profile.title)
                    Image("")
                    abilityView(profile: profile)
                    
                }
            }
            
            .onTapGesture {
                viewModel.levelUpdate()
            }
            
        }
        
    }
    
    private func abilityView(profile: Profile) -> some View {
        VStack{
            ForEach(profile.ability) { ability in
                HStack{
                    Text(ability.name)
                        .font(.system(size: 25))
                        .foregroundColor(.titleTextColor)
                    ForEach(0..<max(ability.level.count,0), id: \.self){ _ in
                        Text(ability.level.imoge)
                    }
                }.padding(24)
            }
        }
    }
}

struct ProfileCard_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = ProfileCardViewModel(profile: .jujuDown)
        return ProfileCardView(viewModel: viewModel)
    }
}
