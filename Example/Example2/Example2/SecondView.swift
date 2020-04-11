//
//  SecondView.swift
//  Example2
//
//  Created by Kanz on 2020/04/11.
//  Copyright © 2020 KanzDev. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    
    //@ObservedObject var timerData: TimerData
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

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
            .environmentObject(TimerData())
    }
}
