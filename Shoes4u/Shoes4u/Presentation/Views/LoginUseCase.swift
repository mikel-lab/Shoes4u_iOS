//
//  LoginUseCase.swift
//  Shoes4u
//
//  Created by Conrado Capilla García on 16/7/22.
//

import Foundation


protocol LoginUseCaseProtocol {
    func execute (email: String, password: String, completionHandler: @escaping (Status) -> (Void))
}


struct LoginUseCase: LoginUseCaseProtocol {
    
    private let repository: UsersRepositoryProtocol = UsersRepository()
    
    func execute(email: String, password: String, completionHandler: @escaping (Status) -> (Void)) {
        repository.login(email: email, password: password, completionHandler: completionHandler)
    }
}
