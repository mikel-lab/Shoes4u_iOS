//
//  RecoverPasswordUseCase.swift
//  Shoes4u
//
//  Created by Conrado Capilla García on 16/7/22.
//

import Foundation
  

protocol RecoverPasswordUseCaseProtocol {
    func execute (email: String)
}
    

struct RecoverPasswordUseCase: RecoverPasswordUseCaseProtocol {
    
    private let repository: UsersRepositoryProtocol = UsersRepository()
    
    func execute(email: String) {
        repository.recoverPassword(email: email)
    }
}
