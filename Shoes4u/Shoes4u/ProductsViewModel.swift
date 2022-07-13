//
//  ProductsViewModel.swift
//  Shoes4u
//
//  Created by Mikel Cobian on 3/7/22.
//

import Foundation
import SwiftUI
import Combine

final class ProductsViewModel: ObservableObject {
    @Published var products : Product?
    
    var productosDevueltos = Set<AnyCancellable>()
    
    func getProducts(){
        
    }
    
}

extension Color {
    // <------- Color del fondo de la app ----->
    public static var EqButtonAction: Color {
       return Color(UIColor(red: 174/255, green: 207/255, blue: 209/255, alpha: 1.0))
    }
}
