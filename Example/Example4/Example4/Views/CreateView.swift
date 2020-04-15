//
//  CreateView.swift
//  Example4
//
//  Created by Kanz on 2020/04/12.
//  Copyright © 2020 KanzDev. All rights reserved.
//

import SwiftUI

struct CreateView: View {
    
    @ObservedObject var repoStore: RepositoryStore
    
    @State var name: String = ""
    @State var description: String = ""
    @State var githubURL: String = ""
    @State var isOrganization: Bool = false
    
    var body: some View {
        Form {
            Section(header: Text("Repositoy Details")) {
                Image(systemName: "folder.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                
                InputFieldView(title: "Repository Name",
                               userInput: $name)
                InputFieldView(title: "GitHub URL",
                               keyboardType:.URL,
                               userInput: $githubURL)
                InputFieldView(title: "Description",
                               userInput: $description)
            }
            
            Button(action: addRepository) {
                Text("Add Repository")
            }
        }
    }
    
    private func addRepository() {
        
        let newRepo = Repository(id: Int(arc4random()),
                                 name: name,
                                 url: githubURL,
                                 description: description,
                                 iconName: "GitTime",
                                 organization: isOrganization)
        repoStore.repos.append(newRepo)
    }
}

struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView(repoStore: RepositoryStore(repos: repoData))
    }
}
