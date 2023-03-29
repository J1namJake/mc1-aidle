//
//  ProfileCard.swift
//  mc1-aidle
//
//  Created by 박승찬 on 2023/03/28.
//

import SwiftUI

struct ProfileCardView: View {
    //애니매이터 유무에 따라 나중에 사용하려고 주석 해놨습니다.
    //@State var animate = false
    //@State private var fadeInOut = false
    
    @ObservedObject var viewModel: ProfileCardViewModel
    
    var body: some View {
        VStack{
            if let profile = viewModel.profile {
                Text(profile.chapter)
                Text(profile.title)
                Image("")
                HStack{
                    Text(profile.ability[0])
                    Text(profile.abilityLebel[0])
                    //if animate {
                    //    Text(profile.abilityLebel[0])
                    //        .onAppear() {
                    //            withAnimation(Animation
                    //                .easeInOut(duration: 0.6)
                    //                .repeatCount(2)){
                    //                    fadeInOut.toggle()
                    //                }
                    //        }.opacity(fadeInOut ? 1 : 0)
//
                    //}else {
                    //    Text(profile.abilityLebel[0])
                    //}
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
        //.onTapGesture {
        //    if animate {
        //        viewModel.animateAbility()
        //    }
        //    animate = false
        //}
    }
}

struct ProfileCard_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = ProfileCardViewModel(profile: .juju)
        return ProfileCardView(viewModel: viewModel)
    }
}
