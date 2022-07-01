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
            Image("Shoes4u")
                .resizable()
                .scaledToFit()
                .padding([.leading, .trailing], 60)
                .padding(.top, 100)
            Spacer()
            /* =================== */
            // USUARIO
            TextFieldAndImageView(placeholder: "Usuario", image: "person")
                .padding(.bottom, 8)
            // CONTRASEÑA
            TextFieldAndImageView(placeholder: "Contraseña", image: "lock")
            // LOG-IN
            Button {
                print("Estoy intentando entrar al sistema")
            } label: {
                ButtonConfirmUserView(textButton: "ENTRAR")
            }
            .padding(.top, 16)
            /* =================== */
            
            // Sección de olvidar contraseña
            
            Button {
                print ("Estoy intentando recuperar mi contraseña")
            } label: {
                Text("He olvidado mi contraseña")
            }
            .padding(.top, 20)
            
            Spacer()
            
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
            .padding(.bottom, 25)
            
            
            
            Image("LOGO")
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding([.leading, .trailing], 25)
        .background(Color.mainBackground)
        
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
