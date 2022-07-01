//
//  RootViewModel.swift
//  Shoes4u
//
//  Created by Conrado Capilla García on 30/6/22.
//

import Foundation
import Combine


final class RootViewModel: ObservableObject {
    
    @Published var status = Status.none
    
    var suscribers = Set<AnyCancellable>()
    
}
