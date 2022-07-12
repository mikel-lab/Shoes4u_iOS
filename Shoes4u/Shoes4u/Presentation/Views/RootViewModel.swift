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
    let db = Firestore.firestore()
    
    // FUNCIÓN PARA HACER EL INICIO DE SESIÓN DE UN USUARIO YA REGISTRADO
    func login (email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password, completion: { [weak self] authResult, error in
            guard let self = self else { return }
            if error == nil {
                // Inicio de sesión realizado correctamente
                self.status = Status.products
            } else {
                // print(error?.localizedDescription)
                // No se ha producido el inicio de sesión debido a un error
            }
        })
    }
    
    // FUNCIÓN PARA EL REGISTRO DEL USUARIO EN LA PARTE DE AUTHENTICATION
    func registerUserAuthentication (email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] authResult, error in
            guard let self = self else { return }
            if error == nil {
                // Registro realizado correctamente
                self.status = Status.login
            } else {
                // print(error?.localizedDescription)
                // No se ha producido el registro debido a un error
            }
        }
    }
    
    // FUNCIÓN PARA EL REGISTRO DE USUARIO EN FIRESTORE CON TODOS SUS DATOS
    func registerUserFullDataFireStore(name: String, surnames: String, email: String, province: String, city: String, username: String, password: String) {
        var ref: DocumentReference? = nil
        ref = db.collection("users").addDocument(data: [
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
    
    // FUNCIÓN PARA RECUPERAR LA CONTRASEÑA
    func recoverPassword (email: String) {
        Auth.auth().sendPasswordReset(withEmail: email) { error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
        }
    }
}
