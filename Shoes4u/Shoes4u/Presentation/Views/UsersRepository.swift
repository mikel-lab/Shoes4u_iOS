//
//  UsersRepository.swift
//  Shoes4u
//
//  Created by Conrado Capilla García on 16/7/22.
//

import Foundation
import Firebase
import FirebaseFirestore


protocol UsersRepositoryProtocol {
    func login(email: String, password: String, completionHandler: @escaping (Status) -> (Void))
    func recoverPassword(email: String)
    func registerUserAuthentication(email: String, password: String, completionHandler: @escaping (Status) -> (Void))
    func registerUserFullFirestore(name: String, surnames: String, email: String, province: String, city: String, username: String, password: String)
}


struct UsersRepository: UsersRepositoryProtocol {
    
    let firebase = Firestore.firestore()
    
    func login(email: String, password: String, completionHandler: @escaping (Status) -> (Void)) {
        Auth.auth().signIn(withEmail: email, password: password, completion: { authResult, error in
            if error == nil {
                // Inicio de sesión realizado correctamente
                // self.status = Status.products
                completionHandler(Status.products)
            } else {
                // print(error?.localizedDescription)
                // No se ha producido el inicio de sesión debido a un error
            }
        })
    }
    
    
    func recoverPassword(email: String) {
        Auth.auth().sendPasswordReset(withEmail: email) { error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
        }
    }
    
    func registerUserAuthentication(email: String, password: String, completionHandler: @escaping (Status) -> (Void)) {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if error == nil {
                // Registro realizado correctamente
                // self.status = Status.login
                completionHandler(Status.login)
            } else {
                // print(error?.localizedDescription)
                // No se ha producido el registro debido a un error
            }
        }
    }
    
    func registerUserFullFirestore(name: String, surnames: String, email: String, province: String, city: String, username: String, password: String) {
        var ref: DocumentReference? = nil
        ref = firebase.collection("users").addDocument(data: [
            "name" : name,
            "surname" : surnames,
            "email" : email,
            "province" : province,
            "city" : city,
            "username" : username,
            "password" : password
        ]) { err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID: \(ref!.documentID)")
            }
        }
    }
    
    
}
