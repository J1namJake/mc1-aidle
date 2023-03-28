//
//  ScriptView.swift
//  
//
//  Created by byo on 2023/03/28.
//

import SwiftUI

struct ScriptView: View {
    @ObservedObject var viewModel: ScriptViewModel
    
    var body: some View {
        VStack {
        }
    }
}

struct ScriptView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = ScriptViewModel()
        return ScriptView(viewModel: viewModel)
    }
}
