//
//  Spin.swift
//  SwiftUI_Study
//
//  Created by 강치우 on 11/16/23.
//

import SwiftUI



struct Spin: View {
    
    @State private var isLoading: Bool = false
    private let lineWidth: CGFloat = 25
    private let pathColor: Color = .gray
    private let lineColor: Color = .pink
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(pathColor, lineWidth: lineWidth)
                .opacity(0.2)
            Circle()
                .trim(from: 0, to: 0.2)
                .stroke(style: StrokeStyle(lineWidth: lineWidth,
                                           lineCap: .round,
                                           lineJoin: .round))
                .foregroundColor(lineColor)
                .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
                .animation(Animation
                    .linear(duration: 2.2)
                    .repeatForever(autoreverses: false),
                           value: isLoading)
                .onAppear {
                    self.isLoading.toggle()
            }
        }
    }
}

#Preview {
    Spin()
}
