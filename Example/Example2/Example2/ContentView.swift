//
//  ContentView.swift
//  Example2
//
//  Created by Kanz on 2020/04/11.
//  Copyright © 2020 KanzDev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // @ObservedObject var timerData: TimerData = TimerData()
    @EnvironmentObject var timerData: TimerData
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Timer count = \(timerData.timeCount)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                Button(action: resetCount) {
                    Text("Reset Counter")
                }
                
                /*
                 not working..
                NavigationLink(destination:
                SecondView(timerData: timerData)) {
                    Text("Next Screen")
                }
                .padding()
                */
                
                NavigationLink(destination: SecondView().environmentObject(self.timerData)) {
                    Text("Next Screen")
                }.padding()
            }
        }
    }
    
    func resetCount() {
        timerData.resetCount()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(TimerData())
    }
}
