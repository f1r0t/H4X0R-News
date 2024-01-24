//
//  ContentView.swift
//  H4X0R News
//
//  Created by Fırat AKBULUT on 26.09.2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject  var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            List(networkManager.posts, rowContent: { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            })
            .navigationTitle("H4X0R NEWS")
        }
        .onAppear {
            networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView() 
    }
}


//let pots = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Hello2"),
//    Post(id: "3", title: "Hello3")
//]
