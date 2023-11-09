//
//  SecondTabView.swift
//  SwiftUI_Study
//
//  Created by 강치우 on 11/9/23.
//

import SwiftUI

struct SecondTabView: View {
    @State private var text: String = ""
    
    var body: some View {
        TextEditor(text: $text)
            .padding()
            .onChange(of: text) { oldValue, newValue in
                print("onChange triggered")
            }
    }
}

#Preview {
    SecondTabView()
}
