//
//  NewsResponse.swift
//  HackerNews
//
//  Created by Adnan Habib on 25/08/2023.
//

import Foundation

struct NewsResponse: Decodable {
    let hits: [News]
}

struct News: Decodable, Identifiable {
    var id:String {
        return objectID
    }
    let objectID:String
    let points: Int
    let title:String
    let url:String
}
