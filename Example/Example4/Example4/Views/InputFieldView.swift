//
//  InputFieldView.swift
//  Example4
//
//  Created by Kanz on 2020/04/15.
//  Copyright © 2020 KanzDev. All rights reserved.
//

import SwiftUI

struct InputFieldView: View {
    
    var title: String
    var keyboardType: UIKeyboardType = .default
    
    @Binding var userInput: String
    
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading) {
            Text(title)
                .font(.headline)
            TextField("Enter \(title)", text: $userInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(keyboardType)
        }
        .padding()
    }
}

//struct InputFieldView_Previews: PreviewProvider {
//    static var previews: some View {
//        InputFieldView(title: "Title",
//                       userInput: "ㄴㅁㅇㄹ")
//    }
//}
