//
//  RestartView.swift
//  mc1-aidle
//
//  Created by 박승찬 on 2023/03/30.
//

import SwiftUI

protocol RestartViewDelegate : AnyObject{
    func restartDidEnd()
}

struct RestartView: View {
    
    weak var delegate: RestartViewDelegate?
    
    var body: some View {
        ZStack{
            Color.backgroundColor.ignoresSafeArea()
            Image("restart")
                .resizable()
                .frame(width: 160, height: 252)
        }
        .onTapGesture {
            delegate?.restartDidEnd()
        }
    }
    
}

struct RestartView_Previews: PreviewProvider {
    static var previews: some View {
        RestartView()
    }
}
