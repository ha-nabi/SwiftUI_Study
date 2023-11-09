//
//  FirstTabView.swift
//  SwiftUI_Study
//
//  Created by 강치우 on 11/9/23.
//

import SwiftUI

struct FirstTabView: View {
    var body: some View {
        Text("View One")
            .onAppear {
                print("onAppear triggered")
            }
            .onDisappear {
                print("onDisappear triggered")
            }
    }
}

#Preview {
    FirstTabView()
}
