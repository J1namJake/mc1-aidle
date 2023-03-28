//
//  ProfileCardModel.swift
//  mc1-aidle
//
//  Created by 박승찬 on 2023/03/28.
//

import Foundation

class ProfileCardViewModel {
    @Published var profile: Profile?
    
    init(profile: Profile? = nil) {
        self.profile = profile
    }
}
