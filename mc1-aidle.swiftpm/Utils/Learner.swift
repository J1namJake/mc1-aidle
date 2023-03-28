//
//  Learner.swift
//  
//
//  Created by byo on 2023/03/28.
//

import Foundation

enum Learner {
    case byo
    case ddan
    case jake
    case juju
    case suri
    case theo
    
    var name: String {
        switch self {
        case .byo:
            return "뵤"
        case .ddan:
            return "딴"
        case .jake:
            return "제이크"
        case .juju:
            return "쥬쥬"
        case .suri:
            return "수리"
        case .theo:
            return "테오"
        }
    }
}
