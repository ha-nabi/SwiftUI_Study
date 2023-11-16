//
//  SpinAnimation.swift
//  SwiftUI_Study
//
//  Created by 강치우 on 11/16/23.
//

import SwiftUI

struct SpinAnimation: View {
    
    @State private var animate = false
    
    var body: some View {
        VStack {
            
            Circle()
                .trim(from: 0, to: 0.8)
                .stroke(AnyGradient(Gradient(colors: [.red, .orange])), style: StrokeStyle(lineWidth: 8, lineCap: .round))
                .frame(width: 100, height: 100)
                .rotationEffect(.init(degrees: self.animate ? 360 : 0))
                .animation(Animation.linear(duration: 0.7).repeatForever(autoreverses: false))
        }
        .onAppear {
            self.animate.toggle()
        }
    }
}

#Preview {
    SpinAnimation()
}
