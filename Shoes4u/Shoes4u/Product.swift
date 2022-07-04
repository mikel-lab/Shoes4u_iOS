//
//  Product.swift
//  Shoes4u
//
//  Created by Mikel Cobian on 3/7/22.
//

import Foundation
import CoreLocation

struct Product: Codable, Identifiable{
    
    let id: UUID
    let category:String?
    let description: String? 
    let name: String?
    let price: Int?
}
