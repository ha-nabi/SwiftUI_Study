//
//  TestThird.swift
//  SwiftUI_Study
//
//  Created by 강치우 on 11/9/23.
//

import SwiftUI

struct TimerFirst: View {
    @StateObject var timerData: TimerData = TimerData()
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Timer Count = \(timerData.timeCount)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                Button(action: {
                    buttonReset()
                }, label: {
                    Text("Reset Count")
                })
                NavigationLink(destination: TimerSecond()) {
                    Text("Next Screen")
                }
                .padding()
            }
        }
        .environmentObject(timerData)
    }
    
    func buttonReset() {
        
        timerData.resetCount()
    }
}

#Preview {
    TimerFirst()
}
