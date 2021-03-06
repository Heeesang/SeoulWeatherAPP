//
//  MainViewController.swift
//  SeoulWeatherAPP
//
//  Created by 곽희상 on 2022/04/20.
//

import Foundation
import UIKit
import SnapKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    private let tableView = UITableView()
    let items: [String] = ["adasd","dasdsa"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

        
        view.backgroundColor = .red
        
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        view.addSubview(tableView)
       
        tableView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }
}

extension MainViewController{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
}
