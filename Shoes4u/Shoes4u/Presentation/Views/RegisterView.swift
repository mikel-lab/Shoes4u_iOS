//
//  RegisterView.swift
//  Shoes4u
//
//  Created by Conrado Capilla García on 27/6/22.
//

import SwiftUI

struct RegisterView: View {
    
    // Variables
    @EnvironmentObject var rootViewModel: RootViewModel
    @State private var name: String = ""
    @State private var surnames: String = ""
    @State private var mail: String = ""
    @State private var city: String = ""
    @State private var province: String = ""
    @State private var userName: String = ""
    @State private var password: String = ""
    @State private var confirmedPassword: String = ""
    
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
                    .padding(.top, 20)
                Spacer()
                /* ============================== */
                /* BLOQUE DE INFORMÁCIÓN PERSONAL */
                /* ============================== */
                VStack(alignment: .leading) {
                    Text("Información personal")
                        .fontWeight(.heavy)
                    /* ====== */
                    /* NOMBRE */
                    /* ====== */
                    HStack {
                        TextField("Nombre", text: $name)
                            .padding(4)
                            .overlay(RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.black, lineWidth: 2))
                        Image(systemName: "signature")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 32)
                    }
                    .padding(.bottom, 8)
                    /* ========= */
                    /* APELLIDOS */
                    /* ========= */
                    HStack {
                        TextField("Apellidos", text: $surnames)
                            .padding(4)
                            .overlay(RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.black, lineWidth: 2))
                        Image(systemName: "signature")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 32)
                    }
                    .padding(.bottom, 8)
                    /* ================== */
                    /* CORREO ELECTRÓNICO */
                    /* ================== */
                    HStack {
                        TextField("Correo electrónico", text: $mail)
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
                    /* ====== */
                    /* CIUDAD */
                    /* ====== */
                    HStack {
                        TextField("Ciudad", text: $city)
                            .padding(4)
                            .overlay(RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.black, lineWidth: 2))
                        Image(systemName: "building")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 32)
                    }
                    .padding(.bottom, 8)
                    /* ========= */
                    /* PROVINCIA */
                    /* ========= */
                    HStack {
                        TextField("Provincia", text: $province)
                            .padding(4)
                            .overlay(RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.black, lineWidth: 2))
                        Image(systemName: "building.2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 32)
                    }
                }
                Spacer()
                /* ================================= */
                /* BLOQUE DE INFORMÁCIÓN DEL USUARIO */
                /* ================================= */
                VStack(alignment: .leading) {
                    Text("Información de usuario")
                        .fontWeight(.heavy)
                    /* ================= */
                    /* NOMBRE DE USUARIO */
                    /* ================= */
                    HStack {
                        TextField("Nombre de usuario", text: $userName)
                            .padding(4)
                            .overlay(RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.black, lineWidth: 2))
                            .autocapitalization(.none)
                        Image(systemName: "person")
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
                    .padding(.bottom, 8)
                    /* ==================== */
                    /* CONFIRMAR CONTRASEÑA */
                    /* ==================== */
                    HStack {
                        TextField("Confirmar contraseña", text: $confirmedPassword)
                            .padding(4)
                            .overlay(RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.black, lineWidth: 2))
                            .autocapitalization(.none)
                        Image(systemName: "lock")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 32)
                    }
                }
                Spacer()
                /* =========================== */
                /* BOTÓN DE CONFIRMAR REGISTRO */
                /* =========================== */
                Button {
                    // Que ninguno de los campos esté vacío
                    // Y que los campos de contraseña y confirmar contraseña sean iguales
                    rootViewModel.registerUserAuthentication(email: mail,
                                                             password: confirmedPassword)
                    rootViewModel.registerUserFullDataFireStore(name: name,
                                                                surnames: surnames,
                                                                email: mail,
                                                                province: province,
                                                                city: city,
                                                                username: userName,
                                                                password: password)
                } label: {
                    Text("REGÍSTRAME")
                        .fontWeight(.medium)
                        .padding([.bottom, .top], 8)
                        .padding([.leading, .trailing], 14)
                        .foregroundColor(Color.white)
                        .background(Color.secondaryBackground)
                        .cornerRadius(5)
                }
                
                Spacer()
                /* ===================== */
                /* LOGO DE LA APLICACIÓN */
                /* ===================== */
                Image("LOGO")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding([.leading, .trailing], 25)
            .background(Color.mainBackground)
            .navigationTitle("Registro de usuario")
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
    
    
    
    private func textFieldIsEmpty (content: String) -> Bool {
        if content.isEmpty {
            return true
        } else {
            return false
        }
    }
    
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
