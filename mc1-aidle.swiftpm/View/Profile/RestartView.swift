//
//  RestartView.swift
//  mc1-aidle
//
//  Created by 박승찬 on 2023/03/30.
//

import SwiftUI

struct RestartView: View {
    var body: some View {
        ZStack{
            Color.backgroundColor.ignoresSafeArea()
            Image("restart")
                .resizable()
                .frame(width: 160, height: 252)
        }
    }
}

struct RestartView_Previews: PreviewProvider {
    static var previews: some View {
        RestartView()
    }
}
