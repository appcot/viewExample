//
//  TableViewCell.swift
//  viewExample
//
//  Created by appcot on 2017/08/05.
//  Copyright © 2017年 appcot. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var indexPathNumber: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(indexPathNumber: IndexPath) {
        self.indexPathNumber.text = String(indexPathNumber.row)
    }
    
    
}
