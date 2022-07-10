//
//  StatusModel.swift
//  Shoes4u
//
//  Created by Conrado Capilla García on 30/6/22.
//

import Foundation

enum Status {
    case none
    case login
    case register
    case recoverPassword
    case products
    case error(error: String)
}
