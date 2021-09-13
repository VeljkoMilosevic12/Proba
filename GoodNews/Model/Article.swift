//
//  Article.swift
//  GoodNews
//
//  Created by Veljko Milosevic on 31.7.21..
//

import Foundation
struct ArticleList: Codable {
    let articles: [Article]
}


struct Article:Codable {
    let title: String
    let description: String?
    
    
    
}
