//
//  RootViewModel.swift
//  Shoes4u
//
//  Created by Conrado Capilla García on 30/6/22.
//

import Foundation
import Firebase
import FirebaseFirestore


final class RootViewModel: ObservableObject {
    
    // Variables
    @Published var status = Status.none
    
    private let login: LoginUseCaseProtocol = LoginUseCase()
    private let recoverPassword: RecoverPasswordUseCaseProtocol = RecoverPasswordUseCase()
    private let registerUser: RegisterUserUseCaseProtocol = RegisterUserUseCase()
    
    // FUNCIÓN PARA HACER EL INICIO DE SESIÓN DE UN USUARIO YA REGISTRADO
    func login (email: String, password: String) {
        login.execute(email: email, password: password) { [weak self] stat in
            guard let self = self else { return }
            self.status = stat
        }
    }
    
    // FUNCIÓN PARA EL REGISTRO DEL USUARIO EN LA PARTE DE AUTHENTICATION
    func registerUserAuthentication (email: String, password: String) {
        registerUser.executeAuthentication(email: email, password: password) { [weak self] stat in
            guard let self = self else { return }
            self.status = stat
        }
    }
    
    // FUNCIÓN PARA EL REGISTRO DE USUARIO EN FIRESTORE CON TODOS SUS DATOS
    func registerUserFullDataFireStore(name: String, surnames: String, email: String, province: String, city: String, username: String, password: String) {
        registerUser.executeFullRegisterFirebase(name: name, surnames: surnames, email: email, province: province, city: city, username: username, password: password)
    }
    
    // FUNCIÓN PARA RECUPERAR LA CONTRASEÑA
    func recoverPassword (email: String) {
        recoverPassword.execute(email: email)
    }
}
