//
//  DetailViewModel.swift
//  MVVM-2
//
//  Created by Mac Pro on 06.04.2023.
//

import Foundation

class DetailViewModel: DetailViewModelType {
    
    private var profile: Profile
    
    var description: String {
        return String(describing: "\(profile.name) \(profile.secondName) is \(profile.age) age old!")
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}
