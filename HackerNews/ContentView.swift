//
//  ContentView.swift
//  HackerNews
//
//  Created by Adnan Habib on 25/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.news) { news in
                NewsView(news: news)
            }
            .navigationBarTitle("Hacker News")
        }
        .onAppear{
            networkManager.fetchNews()
        }
    }
}

struct NewsView:View {
    let news:News
    
    var body: some View {
        HStack {
            Text(String(news.points))
            Text(news.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
