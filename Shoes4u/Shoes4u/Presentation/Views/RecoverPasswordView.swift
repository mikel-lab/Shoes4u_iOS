//
//  RecoverPasswordView.swift
//  Shoes4u
//
//  Created by Conrado Capilla García on 30/6/22.
//

import SwiftUI

struct RecoverPasswordView: View {
    var body: some View {
        
        VStack {
            Image("LOGO")
            Text("¿OLVIDASTE LA CONTRASEÑA?")
            Text("Introduce tu e-mail y te enviaremos un enlace para poder cambiar tu contraseña")
            TextFieldAndImageView(placeholder: "Correo electrónico", image: "person")
            ButtonConfirmUserView(textButton: "ENVIAR")
            Image("LOGO")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.brown)
    }
}

struct RecoverPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        RecoverPasswordView()
    }
}
