//
//  ContentView.swift
//  Example4
//
//  Created by Kanz on 2020/04/11.
//  Copyright © 2020 KanzDev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var repoStore: RepositoryStore = RepositoryStore(repos: repoData)
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(repoStore.repos) { repo in
                    RepositoryCell(repo: repo)
                }
                
            .onMove(perform: moveItems(from:to:))
            .onDelete(perform: deleteItems(at:))
                
            }
            .navigationBarTitle(Text("Hot Swift Repos"))
            .navigationBarItems(leading: NavigationLink(destination: CreateView(repoStore: repoStore), label: {
                Text("Add")
            }), trailing: EditButton())
        }
    }
    
    private func deleteItems(at offsets: IndexSet) {
        repoStore.repos.remove(atOffsets: offsets)
    }
    
    private func moveItems(from source: IndexSet, to destination: Int) {
        repoStore.repos.move(fromOffsets: source, toOffset: destination)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
