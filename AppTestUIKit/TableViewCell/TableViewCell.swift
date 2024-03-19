//
//  TableViewCell.swift
//  AppTestUIKit
//
//  Created by ahmed hussien on 18/03/2024.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var cellText: UILabel!
    
    static let identifier = "TableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cellText.text = "asd" 
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
