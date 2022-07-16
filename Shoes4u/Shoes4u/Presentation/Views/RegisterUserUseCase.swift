//
//  RegisterUSerUseCase.swift
//  Shoes4u
//
//  Created by Conrado Capilla García on 16/7/22.
//

import Foundation


protocol RegisterUserUseCaseProtocol {
    func executeAuthentication (email: String, password: String, completionHandler: @escaping (Status) -> (Void))
    func executeFullRegisterFirebase (name: String, surnames: String, email: String, province: String, city: String, username: String, password: String)
}


struct RegisterUserUseCase: RegisterUserUseCaseProtocol {
    
    private let repository: UsersRepositoryProtocol = UsersRepository()
    
    func executeAuthentication(email: String, password: String, completionHandler: @escaping (Status) -> (Void)) {
        repository.registerUserAuthentication(email: email, password: password, completionHandler: completionHandler)
    }
    
    func executeFullRegisterFirebase(name: String, surnames: String, email: String, province: String, city: String, username: String, password: String) {
        repository.registerUserFullFirestore(name: name, surnames: surnames, email: email, province: province, city: city, username: username, password: password)
    }
    
    
}


