//
//  SwiftUIView.swift
//  SwiftUI_Study
//
//  Created by 강치우 on 11/9/23.
//

import SwiftUI

struct Test: View {
    @State private var timer: Int = 0
    var body: some View {
        Text("Timer = \(timer)")
        
        Button(action: {
            buttonpressed()
        }, label: {
            Text("누르세요")
        })
        .padding()
        
        Button(action: {
            buttonreset()
        }, label: {
            Text("초기화")
        })
    }
    
    func buttonpressed() {
        
        timer += 1
    }
    
    func buttonreset() {
        
        timer = 0
    }
}

#Preview {
    Test()
}
