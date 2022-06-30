//
//  RegisterView.swift
//  Shoes4u
//
//  Created by Conrado Capilla García on 27/6/22.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack {
            // Campos de texto
            VStack {
                Text("Información personal")
                TextFieldAndImageView(placeholder: "Nombre", image: "")
                TextFieldAndImageView(placeholder: "Apellidos", image: "")
                TextFieldAndImageView(placeholder: "Correo electrónico", image: "")
                TextFieldAndImageView(placeholder: "Ciudad", image: "")
                TextFieldAndImageView(placeholder: "Provincia", image: "")
            }
            
            
            VStack {
                Text("Información de usuario")
                TextFieldAndImageView(placeholder: "Nombre de usuario", image: "")
                TextFieldAndImageView(placeholder: "Contraseña", image: "")
                TextFieldAndImageView(placeholder: "Confirmar contraseña", image: "")
            }
            
            // Registro
            ButtonConfirmUserView(textButton: "ENTRAR")
            // Logo de la app
            Image("LOGO")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.teal)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
