//
//  TableViewCellViewModel.swift
//  MVVM-2
//
//  Created by Mac Pro on 06.04.2023.
//

import Foundation

class TableViewCellViewModel: TableViewCellModelType {
    
    private var profile: Profile
    
    var fullName: String {
        return profile.name + " " + profile.secondName
    }
    
    var age: String {
        return String(describing: profile.age)
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
    
}
