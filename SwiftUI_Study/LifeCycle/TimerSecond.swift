//
//  Testt.swift
//  SwiftUI_Study
//
//  Created by 강치우 on 11/10/23.
//

import SwiftUI

struct TimerSecond: View {
    @EnvironmentObject var timerData: TimerData
    
    var body: some View {
        VStack {
            Text("Second View")
                .font(.largeTitle)
            Text("Timer Count = \(timerData.timeCount)")
                .font(.headline)
        }
        .padding()
    }
}

#Preview {
    TimerSecond().environmentObject(TimerData())
}
