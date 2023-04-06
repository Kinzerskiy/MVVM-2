//
//  ViewModel.swift
//  MVVM-2
//
//  Created by Mac Pro on 06.04.2023.
//

import Foundation



class ViewModel: TableViewViewModelType {
    
    private var selectedIndexPath: IndexPath?
    
    var profiles = [
    Profile(name: "Jhon", secondName: "Weak", age: 37),
    Profile(name: "Max", secondName: "Mad", age: 33),
    Profile(name: "Mak ", secondName: "Ji", age: 29)
    ]
    
    func numberOfRows() -> Int {
        profiles.count
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellModelType? {
        let profile = profiles[indexPath.row]
        return TableViewCellViewModel(profile: profile)
    }
    
    
    func viewModelForSelectedRow() -> DetailViewModelType? {
        guard let selectedIndexPath = selectedIndexPath else { return nil }
        return DetailViewModel(profile: profiles[selectedIndexPath.row])
    }
    
    func selectRow(atIndexPath indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }
}
