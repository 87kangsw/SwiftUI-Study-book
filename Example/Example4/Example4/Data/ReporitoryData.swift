//
//  ReporitoryData.swift
//  Example4
//
//  Created by Kanz on 2020/04/12.
//  Copyright © 2020 KanzDev. All rights reserved.
//

import Foundation

var repoData: [Repository] = loadJson("RepositoryData")

func loadJson<T: Decodable>(_ fileName: String) -> T {
    let data: Data
    
    guard let fileURL = Bundle.main.url(forResource: fileName, withExtension: "json") else {
        fatalError("\(fileName) not exist")
    }
    
    do {
        data = try Data(contentsOf: fileURL)
    } catch {
        fatalError("could not load file: \(error.localizedDescription)")
    }
    
    do {
        return try JSONDecoder().decode(T.self, from: data)
    } catch {
        fatalError("failed decode: \(error.localizedDescription)")
    }
}
