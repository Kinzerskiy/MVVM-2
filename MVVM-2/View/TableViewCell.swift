//
//  TableViewCell.swift
//  MVVM-2
//
//  Created by Mac Pro on 06.04.2023.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    weak var viewModel: TableViewCellModelType? {
        willSet(viewModel) {
            guard let viewModel = viewModel else {return}
            fullNameLabel.text = viewModel.fullName
            ageLabel.text = viewModel.age
        }
    }

}
