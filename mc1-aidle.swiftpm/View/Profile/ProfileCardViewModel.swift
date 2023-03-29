//
//  ProfileCardModel.swift
//  mc1-aidle
//
//  Created by 박승찬 on 2023/03/28.
//

import Foundation

class ProfileCardViewModel : ObservableObject{
    @Published var profile: Profile?
    
    init(profile: Profile? = nil) {
        self.profile = profile
    }
    
    func animateAbility() {
        profile = profile?.animate
    }
    
}
