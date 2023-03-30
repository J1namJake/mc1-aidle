//
//  EndingCards.swift
//  mc1-aidle
//
//  Created by 박승찬 on 2023/03/31.
//

import SwiftUI

struct EndingCards: View {
    let cards : [String] = [
    "99jake","99juju","99suri","99ddan","99byo","99theo"]
    var body: some View {
        return GeometryReader { proxy in
            ZStack{
                Color.backgroundColor.ignoresSafeArea()
                ScrollView(.horizontal) {
                    HStack(spacing: 0) {
                        ForEach(cards, id: \.self) { card in
                            Image(card)
                                .resizable()
                                .scaledToFit()
                                .padding()
                        }
                        .frame(width: proxy.size.width, height: proxy.size.height)
                    }
                }
            }.onAppear {
                UIScrollView.appearance().isPagingEnabled = true
            }
        }
    }
}

struct EndingCards_Previews: PreviewProvider {
    static var previews: some View {
        EndingCards()
    }
}
