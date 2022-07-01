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
            
            Image("Shoes4u")
                .resizable()
                .scaledToFit()
                .padding([.leading, .trailing], 60)
                .padding(.top, 50)
            
            Spacer()
            
            Text("Restaurar contraseña")
                .fontWeight(.heavy)
                .font(.system(size: 24))
            Spacer()
            
            VStack (alignment: .leading){
                Text("Introduce tu correo electrónico y recibirás un enlace para restaurarla")
                    .fontWeight(.thin)
                    .padding(.bottom, 16)
                TextFieldAndImageView(placeholder: "Correo electrónico", image: "person")
            }
            
            ButtonConfirmUserView(textButton: "ENVIAR")
                .padding(.top, 16)
            Spacer()
            Image("LOGO")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding([.leading, .trailing], 25)
        .background(Color.mainBackground)
    }
}

struct RecoverPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        RecoverPasswordView()
    }
}
