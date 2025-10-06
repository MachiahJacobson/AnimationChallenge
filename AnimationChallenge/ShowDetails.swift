//
//  ShowDetails.swift
//  AnimationChallenge
//
//  Created by Jacobson, Machiah - Student on 9/25/25.
//

import SwiftUI

struct ShowDetails: View {
    @State var show = false
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 300, height: 300)
                . foregroundStyle(.green)
                .overlay(
                    Text("Show details")
                        .font(.system(.largeTitle, design: .rounded))
                        .bold()
                        . foregroundStyle(.white)
            )
        
            if show {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 300, height: 300)
                    .foregroundStyle(.purple)
                    .overlay(
                        Text("Well, here are the details")
                            .font(.system(.largeTitle, design: .rounded))
                            .bold()
                            .foregroundStyle(.white)
                    )
                    .transition(.scale(scale: 0, anchor: .bottom))
            }
        }
        .onTapGesture {
            withAnimation(.default) {
                self.show.toggle()
            }
        }
    }
}


#Preview {
    ShowDetails()
}
