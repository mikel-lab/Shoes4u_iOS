//
//  RecoverPasswordView.swift
//  Shoes4u
//
//  Created by Conrado Capilla García on 30/6/22.
//

import SwiftUI

struct RecoverPasswordView: View {
    
    // Variables
    @EnvironmentObject var rootViewModel: RootViewModel
    @State private var email = ""
    @State private var showingAlert = false
    
    // Vista
    var body: some View {
        NavigationView {
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
                    HStack {
                        TextField("Correo electrónico", text: $email)
                            .padding(4)
                            .overlay(RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.black, lineWidth: 2))
                        Image(systemName: "envelope")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 32)
                    }
                }
                Button {
                    if (email == "" || !email.contains("@")) {
                        showingAlert = true
                    } else {
                        rootViewModel.recoverPassword(email: email)
                    }
                } label: {
                    Text("Restaurar")
                        .fontWeight(.medium)
                        .padding([.bottom, .top], 8)
                        .padding([.leading, .trailing], 14)
                        .foregroundColor(Color.white)
                        .background(Color.secondaryBackground)
                        .cornerRadius(5)
                }
                .padding(.top, 16)
                .alert(isPresented: $showingAlert) {
                    Alert(
                        title: Text("¡Cuidado!"),
                        message: Text("Antes de nada, has de completar el campo correctamente"),
                        dismissButton: .default(Text("Ok!"))
                    )
                }
                Spacer()
                Image("LOGO")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding([.leading, .trailing], 25)
            .background(Color.mainBackground)
            .navigationTitle("Recuperación de contraseña")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        rootViewModel.status = Status.login
                    } label: {
                        HStack {
                            Image(systemName: "chevron.backward")
                            Text("Atrás")
                                .padding(.leading, -2)
                        }
                        .foregroundColor(.secondaryBackground)
                    }
                }
            }
        }
    }
}

struct RecoverPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        RecoverPasswordView()
    }
}
