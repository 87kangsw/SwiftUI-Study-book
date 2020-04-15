//
//  ContentView.swift
//  Example5
//
//  Created by Kanz on 2020/04/15.
//  Copyright © 2020 KanzDev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = 1
    
    var body: some View {
        TabView(selection: $selection) {
            Text("First ContentView")
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("First Tab")
            }.tag(0)
            
            Text("Second ContentView")
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Second Tab")
            }.tag(1)
            
            Text("Third ContentView")
                .tabItem {
                    Image(systemName: "3.circle")
                    Text("Third Tab")
            }.tag(2)
        }
        .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
