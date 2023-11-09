//
//  DemoView.swift
//  SwiftUI_Study
//
//  Created by 강치우 on 11/9/23.
//

import SwiftUI

struct DemoView: View {
    var body: some View {
        TabView {
            FirstTabView()
                .tabItem {
                    Image(systemName: "01.circle")
                    Text("First")
                }
            
            SecondTabView()
                .tabItem {
                    Image(systemName: "02.circle")
                    Text("Second")
                }
        }
    }
}

#Preview {
    DemoView()
}
