//
//  RepositoryCell.swift
//  Example4
//
//  Created by Kanz on 2020/04/12.
//  Copyright © 2020 KanzDev. All rights reserved.
//

import SwiftUI

struct RepositoryCell: View {
    var repo: Repository
    
    var body: some View {
        
        NavigationLink(destination: RepositoryDetail(selectedRepo: repo)) {
            HStack {
                Image(repo.iconName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 60)
                Text(repo.name)
            }
        }
    }
}

struct RepositoryCell_Previews: PreviewProvider {
    static var previews: some View {
        RepositoryCell(repo: repoData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
