//
//  geometry.swift
//  SwiftUI_Study
//
//  Created by 강치우 on 12/10/23.
//

import SwiftUI

struct geometry: View {
    @State private var scrollOffset: CGFloat = 0

    var body: some View {
        ScrollView {
            VStack {
                ForEach(1...50, id: \.self) { index in
                    Text("Item \(index)")
                        .frame(height: 50)
                        .background(Color.blue)
                        .id(index)
                }
            }
            .background(
                GeometryReader { geometry in
                    Color.clear
                        .onAppear {
                            // 초기 스크롤 위치 조정을 원하는 위치로 설정하세요.
                            // 여기서는 스크롤 중간으로 이동합니다.
                            scrollOffset = geometry.frame(in: .global).minY
                        }
                        .onChange(of: geometry.frame(in: .global).minY) { value, _ in
                            guard value != scrollOffset else { return }
                            let totalHeight = geometry.size.height
                            let scrollableHeight = totalHeight - UIScreen.main.bounds.height
                            let percentage = (value / scrollableHeight) * 100.0
                            let formattedPercentage = String(format: "%.2f", abs(percentage))
                            print("Scrolled \(formattedPercentage)% 만큼 내려왔음")
                            scrollOffset = value
                        }
                }
            )
        }
    }
}

#Preview {
    geometry()
}
