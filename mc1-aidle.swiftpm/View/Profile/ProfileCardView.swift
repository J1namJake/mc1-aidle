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
        ZStack{
            Color.backgroundColor.ignoresSafeArea()
            VStack{
                if let profile = viewModel.profile {
                    Text(profile.level)
                        .font(.system(size: 80))
                        .foregroundColor(.titleTextColor)
                        .padding(29)
                    Text(profile.name)
                        .font(.system(size: 40))
                        .foregroundColor(.titleTextColor)
                    Image(profile.imageKey)
                        .resizable()
                        .frame(width: 135,height: 207)
                        .padding(71)
                    abilityView(profile: profile)
                }
                
                Button("Next(test)") {
                    viewModel.gotoNextScene()
                }
            }
            
            .onTapGesture {
                viewModel.levelUpdate()
            }
            
        }
        
    }
    
    private func abilityView(profile: Profile) -> some View {
        VStack(alignment: .leading){
            ForEach(profile.ability) { ability in
                HStack{
                    Text(ability.name)
                        .font(.system(size: 25))
                        .foregroundColor(.titleTextColor)
                    ForEach(0..<max(ability.level.count,0), id: \.self){ _ in
                        Text(ability.level.imoge).font(.system(size: 34))
                    }
                }.padding(12)
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
