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
            
            Image("Shoes4u")
                .resizable()
                .scaledToFit()
                .padding([.leading, .trailing], 60)
                .padding(.top, 20)
                
            Spacer()

            // Campos de texto
            VStack(alignment: .leading) {
                Text("Información personal")
                    .fontWeight(.heavy)
                TextFieldAndImageView(placeholder: "Nombre", image: "signature")
                    .padding(.bottom, 8)
                TextFieldAndImageView(placeholder: "Apellidos", image: "signature")
                    .padding(.bottom, 8)
                TextFieldAndImageView(placeholder: "Correo electrónico", image: "envelope")
                    .padding(.bottom, 8)
                TextFieldAndImageView(placeholder: "Ciudad", image: "building")
                    .padding(.bottom, 8)
                TextFieldAndImageView(placeholder: "Provincia", image: "building.2")
            }
            
            Spacer()
            
            VStack(alignment: .leading) {
                Text("Información de usuario")
                    .fontWeight(.heavy)
                TextFieldAndImageView(placeholder: "Nombre de usuario", image: "person")
                    .padding(.bottom, 8)
                TextFieldAndImageView(placeholder: "Contraseña", image: "lock")
                    .padding(.bottom, 8)
                TextFieldAndImageView(placeholder: "Confirmar contraseña", image: "lock")
            }
            
            Spacer()
            // Registro
            ButtonConfirmUserView(textButton: "ENTRAR")
            // Logo de la app
            Spacer()
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

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
