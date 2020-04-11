//
//  ContentView.swift
//  Example1
//
//  Created by Kanz on 2020/04/11.
//  Copyright © 2020 KanzDev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var colors: [Color] = [.black, .red, .green, .blue]
    var colorNames: [String] = ["Black", "Red", "Green", "Blue"]
    
    @State private var colorIndex: Int = 0
    @State private var rotation: Double = 0.0
    @State private var text: String = "Welcome to SwiftUI"
    
    var body: some View {
        VStack {
            Spacer()
            Text(text)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .rotationEffect(.degrees(self.rotation))
                .animation(.easeInOut(duration: 5.0))
                .foregroundColor(self.colors[self.colorIndex])
            Spacer()
            Divider()
            
            Slider(value: $rotation, in: 0...360, step: 0.1)
                .padding()
            
            TextField("Enter text here", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Picker(selection: $colorIndex, label: Text("Color")) {
                ForEach(0..<colorNames.count) {
                    Text(self.colorNames[$0])
                        .foregroundColor(self.colors[$0])
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
