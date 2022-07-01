//
//  StatusModel.swift
//  Shoes4u
//
//  Created by Conrado Capilla García on 30/6/22.
//

import Foundation

enum Status {
    case none
    case loading
    case loaded
    case register
    case error(error: String)
}
