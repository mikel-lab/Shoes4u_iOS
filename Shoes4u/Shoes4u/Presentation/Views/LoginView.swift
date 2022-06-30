//
//  ContentView.swift
//  Shoes4u
//
//  Created by Mikel Cobian on 11/6/22.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        
        VStack {
            
            // Logo
            // Image(systemName: "person")
            
            /* =================== */
            // USUARIO
            TextFieldAndImageView(placeholder: "Usuario", image: "person")
            // CONTRASEÑA
            TextFieldAndImageView(placeholder: "Contraseña", image: "key")
            // LOG-IN
            Button {
                print("Estoy intentando entrar al sistema")
            } label: {
                ButtonConfirmUserView(textButton: "ENTRAR")
            }
            /* =================== */
            
            /* =================== */
            
            // Sección de olvidar contraseña
            
            Button {
                print ("Estoy intentando recuperar mi contraseña")
            } label: {
                Text("He olvidado mi contraseña")
            }
            
            
            /* =================== */
            
            // Sección de registrarse
            HStack {
                Text("¿No tienes cuenta?")
                Button {
                    print ("Me estoy registrando en el sistema")
                } label: {
                    ButtonConfirmUserView(textButton: "REGÍSTRATE")
                }
            }
            
            Image("LOGO")
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.brown)
        
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
