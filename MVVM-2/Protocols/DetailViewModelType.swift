//
//  DetailViewModelType.swift
//  MVVM-2
//
//  Created by Mac Pro on 06.04.2023.
//

import Foundation

protocol DetailViewModelType {
    var description: String { get }
    var age: Box<String?> { get }
}
