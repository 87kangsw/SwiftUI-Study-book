//
//  RepositoryStore.swift
//  Example4
//
//  Created by Kanz on 2020/04/12.
//  Copyright © 2020 KanzDev. All rights reserved.
//

import Combine
import SwiftUI

class RepositoryStore: ObservableObject {
    
    @Published var repos: [Repository]
    
    init(repos: [Repository]) {
        self.repos = repos
    }
}

