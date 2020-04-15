//
//  RepositoryDetail.swift
//  Example4
//
//  Created by Kanz on 2020/04/12.
//  Copyright © 2020 KanzDev. All rights reserved.
//

import SwiftUI

struct RepositoryDetail: View {
    
    let selectedRepo: Repository
    
    var body: some View {
        Form {
            Section(header: Text("Repository Detail")) {
                Image(selectedRepo.iconName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .background(Color.init(white: 0.9))
                    .cornerRadius(12.0)
                    .padding()

                Text(selectedRepo.name)
                    .font(.headline)
                
                
                Text(selectedRepo.description)
                    .font(.body)
                
                HStack {
                    Text("Organization")
                        .font(.headline)
                    Spacer()
                    Image(systemName: selectedRepo.organization ? "checkmark.circle" : "xmark.circle")
                }
            }
        }
    }
}

struct RepositoryDetail_Previews: PreviewProvider {
    static var previews: some View {
        RepositoryDetail(selectedRepo: repoData[1])
    }
}
