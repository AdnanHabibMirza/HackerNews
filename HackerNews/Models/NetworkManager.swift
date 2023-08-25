//
//  NetworkManager.swift
//  HackerNews
//
//  Created by Adnan Habib on 25/08/2023.
//

import Foundation

class NetworkManager {
    
    func fetchNews(){
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let newsResponse = try decoder.decode(NewsResponse.self, from: safeData)
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
