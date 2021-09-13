//
//  NewsListTableViewController.swift
//  GoodNews
//
//  Created by Veljko Milosevic on 31.7.21..
//

import UIKit

class NewsListTableViewController: UITableViewController {
    
    // 7a1cb4b9f624483384715a5e9ce52ca1
    
    private var vm: ArticleListViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
       setupUI()
    }
    
    func setupUI(){
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=7a1cb4b9f624483384715a5e9ce52ca1")!
        WebService().getArticles(url: url) { niz in
            if let articles = niz {
                self.vm = ArticleListViewModel(articles: articles)
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
            
           
            
            
            
        }
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vm == nil ? 0 : vm.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ArticleTableViewCell {
            
            let articleModel = vm.articleAtIndex(indexPath.row)
            cell.tableLabel.text = articleModel.title
            cell.descLabel.text = articleModel.description
            
            return cell
            
        }
        else {
            return UITableViewCell()
        }
    }
    
     

   
}
