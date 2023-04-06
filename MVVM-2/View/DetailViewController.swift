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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel?.age.bind { [unowned self] in
            guard let string = $0 else { return }
            self.detailLabel.text = string
            
        }
        
        delay(delay: 5) { [unowned self] in
            self.viewModel?.age.value = "some new value"
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else { return }
        self.detailLabel.text = viewModel.description
    }
    
    
    private func delay(delay: Double, clousure: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + delay) {
            clousure()
        }
    }
}
