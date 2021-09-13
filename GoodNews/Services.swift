//
//  Services.swift
//  GoodNews
//
//  Created by Veljko Milosevic on 31.7.21..
//

import Foundation

class WebService {
    
    func getArticles(url : URL , completion: @escaping ([Article]?)-> Void) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            }
            
            else if let data = data {
                print(data)
                if let json = try? JSONDecoder().decode(ArticleList.self, from: data).articles {
                    
                    completion(json)
                }
            }
            
        }.resume()
    }
}
