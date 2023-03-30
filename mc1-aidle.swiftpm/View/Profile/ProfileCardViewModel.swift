//
//  ProfileCardModel.swift
//  mc1-aidle
//
//  Created by 박승찬 on 2023/03/28.
//

import Foundation

protocol ProfileCardViewModelDelegate: AnyObject {
    func profileCardDidEnd()
}

class ProfileCardViewModel : ObservableObject{
    @Published var profile: Profile?
    
    weak var delegate: ProfileCardViewModelDelegate?
    
    init(profile: Profile? = nil) {
        self.profile = profile
    }
 
    func levelUpdate() {
        guard var updateProfile = profile else {
            return
        }
    
        for ability in updateProfile.ability{
            for updateLevel in updateProfile.levelUpdate ?? [] {
                ability.levelUpdate(levelUpdate: updateLevel)
            }
        }
        profile = updateProfile
    }
    
    func gotoNextScene() {
        delegate?.profileCardDidEnd()
    }
}
