//
//  ContentView.swift
//  HackerNews
//
//  Created by Sagar c bellad on 30/04/20.
//  Copyright © 2020 Sagar c bellad. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){ posts in
                NavigationLink(destination: DetailView(url: posts.url)){
                    HStack {
                        Text(String(posts.points))
                        Text(posts.title)
                    }
                }
            }
            .navigationBarTitle("HACKER NEWS!")
        }
            
        .onAppear {
            self.networkManager.fetchData()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


