//
//  loadingIndicator.swift
//  AnimationChallenge
//
//  Created by Jacobson, Machiah - Student on 9/25/25.
//

import SwiftUI

struct loadingIndicator: View {
    @State private var isLoading = false
    var body: some View {
        ZStack {
            
            Circle()
                .stroke(Color(.systemGray6), lineWidth: 14)
                .frame(width: 100, height: 100)
            
            Circle()
                .trim(from: 0, to: 0.7)
                .stroke(.green, lineWidth: 5)
                .frame(width: 100, height: 100)
                .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
                .animation(.default.repeatForever (autoreverses: false), value: isLoading)
            
                    .onAppear() {
                        self.isLoading = true
            }
        }
    }
}

#Preview {
    loadingIndicator()
}
