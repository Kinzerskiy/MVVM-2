//
//  DetailViewController.swift
//  MVVM-2
//
//  Created by Mac Pro on 06.04.2023.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailLabel: UILabel!

    var viewModel: DetailViewModelType?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else { return }
        self.detailLabel.text = viewModel.description
    }
}
