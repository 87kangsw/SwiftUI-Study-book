//
//  Repository.swift
//  Example4
//
//  Created by Kanz on 2020/04/12.
//  Copyright © 2020 KanzDev. All rights reserved.
//

import Foundation

/**
 "id": 1,
 "name": "RxSwift",
 "url": "https://github.com/ReactiveX/RxSwift",
 "description": "Reactive Programming in Swift",
 "iconName": "RxSwift",
 "organization": true
 */

struct Repository: Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    var description: String
    var iconName: String
    var organization: Bool
}
