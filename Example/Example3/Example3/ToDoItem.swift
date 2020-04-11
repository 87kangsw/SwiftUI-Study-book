//
//  ToDoItem.swift
//  Example3
//
//  Created by Kanz on 2020/04/11.
//  Copyright © 2020 KanzDev. All rights reserved.
//

import Foundation

struct ToDoItem: Identifiable {
    var id = UUID()
    var task: String
    var imageName: String
}
