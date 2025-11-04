//
//  ViewController.swift
//  AppTestUIKit
//
//  Created by ahmed hussien on 18/03/2024.
//

import UIKit

class HomeView: UIViewController, UITableViewDataSource {
    
    let data = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7"]
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
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell else {
            return UITableViewCell()
        }
        cell.cellText.text = data[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

