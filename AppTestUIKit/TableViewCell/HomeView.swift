//
//  ViewController.swift
//  AppTestUIKit
//
//  Created by ahmed hussien on 18/03/2024.
//

import UIKit

class HomeView: UIViewController, UITableViewDataSource {
  
    let tableView: UITableView =  {
        let table = UITableView(frame: .zero, style: .plain)
       // table.rowHeight = 200
        //MARK: NIB registering
        let nib = UINib(nibName: TableViewCell.identifier, bundle: nil)
        table.register(nib, forCellReuseIdentifier: TableViewCell.identifier)
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
}
#Preview{
    HomeView()
}


extension HomeView: UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell else {
            return UITableViewCell()
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

