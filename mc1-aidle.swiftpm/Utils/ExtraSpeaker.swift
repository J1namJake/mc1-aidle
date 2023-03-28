//
//  ExtraSpeaker.swift
//  
//
//  Created by byo on 2023/03/28.
//

import Foundation

struct ExtraSpeaker: Speakerable {
    let name: String
}

extension ExtraSpeaker {
    static let teamMembers = ExtraSpeaker(name: "팀원들")
}
