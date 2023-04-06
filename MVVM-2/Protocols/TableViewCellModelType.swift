//
//  TableViewCellModelType.swift
//  MVVM-2
//
//  Created by Mac Pro on 06.04.2023.
//

import Foundation

protocol TableViewCellModelType: AnyObject {
    var fullName: String { get }
    var age: String { get }
}
