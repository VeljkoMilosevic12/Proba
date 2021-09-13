//
//  ArticleViewModel.swift
//  GoodNews
//
//  Created by Veljko Milosevic on 31.7.21..
//

import Foundation

struct ArticleListViewModel {
    
    let articles: [Article]
    
    var count: Int {
        return articles.count
    }
    
    var numberOfSections: Int {
        return 1
    }
    
    func numberOfRowInSections(_ sectinon: Int) -> Int {
        return articles.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        return ArticleViewModel(articles[index])
    }
    
    
}








struct ArticleViewModel {
    private let article: Article
    
}

extension ArticleViewModel {
    
    init(_ article:Article) {
        self.article = article
    }
    
    var title: String {
        return article.title
    }
    
    var description: String? {
        return article.description
    }
    
}


