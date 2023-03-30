//
//  StageView.swift
//  mc1-aidle
//
//  Created by 박승찬 on 2023/03/30.
//

import SwiftUI

struct StageView: View {
    
    @ObservedObject var viewModel : StageViewModel
    
    var body: some View {
        ZStack{
            Color.backgroundColor.ignoresSafeArea()
            VStack{
                if let stage = viewModel.stage {
                    Text(stage.stageNum)
                        .font(.system(size: 80))
                        .foregroundColor(.titleTextColor)
                        .padding(1)
                    Text(stage.title)
                        .font(.system(size: 40))
                        .foregroundColor(.titleTextColor)
                    Spacer()
                    Image(stage.titleImageKey)
                        .resizable()
                        .scaledToFit()
                        .padding()
                    Spacer()
                }
            }
        }
        .onTapGesture {
            viewModel.gotoNextScene()
        }
    }
}

struct StageView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = StageViewModel(stage: .title1)
        return StageView(viewModel: viewModel)
    }
}
