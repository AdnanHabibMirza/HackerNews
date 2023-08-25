//
//  ContentView.swift
//  HackerNews
//
//  Created by Adnan Habib on 25/08/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { post in
                PostView(post: post)
            }
            .navigationBarTitle("Hacker News")
        }
    }
}

struct PostView:View {
    let post:Post
    
    var body: some View {
        Text(post.title)
    }
}

struct Post: Identifiable {
    let id:String
    let title:String
}

let posts = [
    Post(id: "1", title: "title"),
    Post(id: "1", title: "title"),
    Post(id: "1", title: "title"),
    Post(id: "1", title: "title"),
    Post(id: "1", title: "title")
]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
