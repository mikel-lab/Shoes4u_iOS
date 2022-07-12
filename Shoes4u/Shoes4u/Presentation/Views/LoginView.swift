//
//  ContentView.swift
//  Shoes4u
//
//  Created by Mikel Cobian on 11/6/22.
//

import SwiftUI

struct LoginView: View {
    
    // Variables
    @EnvironmentObject var rootViewModel: RootViewModel
    @State private var email: String = ""
    @State private var password: String = ""
    private var isCorrectEmail: Bool = false
    private var isCorrectPassword: Bool = false
    
    // Vista
    var body: some View {
        NavigationView {
            VStack {
                /* ======================= */
                /* NOMBRE DE LA APLICACIÓN */
                /* ======================= */
                Image("Shoes4u")
                    .resizable()
                    .scaledToFit()
                    .padding([.leading, .trailing], 60)
                    .padding(.top, 100)
                Spacer()
                /* ============================== */
                /* CORREO ELECTRÓNICO DEL USUARIO */
                /* ============================== */
                HStack {
                    TextField("Correo electrónico", text: $email)
                        .padding(4)
                        .overlay(RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.black, lineWidth: 2))
                        .autocapitalization(.none)
                    Image(systemName: "envelope")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                }
                .padding(.bottom, 8)
                /* ========== */
                /* CONTRASEÑA */
                /* ========== */
                HStack {
                    TextField("Contraseña", text: $password)
                        .padding(4)
                        .overlay(RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.black, lineWidth: 2))
                        .autocapitalization(.none)
                    Image(systemName: "lock")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                }
                /* =============== */
                /* BOTÓN DE LOG-IN */
                /* =============== */
                Button {
                    rootViewModel.login(email: email, password: password)
                } label: {
                    Text("ENTRAR")
                        .fontWeight(.medium)
                        .padding([.bottom, .top], 8)
                        .padding([.leading, .trailing], 14)
                        .foregroundColor(Color.white)
                        .background(Color.secondaryBackground)
                        .cornerRadius(5)
                }
                .padding(.top, 16)
                /* ============================ */
                /* BOTÓN DE CONTRASEÑA OLVIDADA */
                /* ============================ */
                Button {
                    rootViewModel.status = Status.recoverPassword
                } label: {
                    Text("He olvidado mi contraseña")
                        .underline()
                        .italic()
                        .foregroundColor(.secondaryBackground)
                }
                .padding(.top, 18)
                Spacer()
                /* ====================== */
                /* SECCIÓN DE REGISTRARSE */
                /* ====================== */
                HStack {
                    Text("¿No tienes cuenta?")
                    Button {
                        rootViewModel.status = Status.register
                    } label: {
                        Text("REGÍSTRATE")
                            .fontWeight(.medium)
                            .padding([.bottom, .top], 8)
                            .padding([.leading, .trailing], 14)
                            .foregroundColor(Color.white)
                            .background(Color.secondaryBackground)
                            .cornerRadius(5)
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
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(false)
        }
        .accentColor(.secondaryBackground)
    }
    
    
    private func textFieldIsEmpty (content: String) {
        if content.isEmpty {
            // El contenido está vacío
        }
    }
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
