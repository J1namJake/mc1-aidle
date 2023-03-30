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
 
    func levelUpdate() {
        guard var updateProfile = profile else {
            return
        }
        if updateProfile.levelUpdateFlag {
            for ability in updateProfile.ability{
                for updateLevel in updateProfile.levelUpdate ?? [] {
                    ability.levelUpdate(levelUpdate: updateLevel)
                }
            }
            updateProfile.levelUpdateFlag = false
            print("update")
        }
        profile = updateProfile
    }
}
