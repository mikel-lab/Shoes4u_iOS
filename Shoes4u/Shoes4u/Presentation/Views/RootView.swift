//
//  RootView.swift
//  Shoes4u
//
//  Created by Conrado Capilla García on 5/7/22.
//

import SwiftUI

struct RootView: View {
    
    // Variables
    @EnvironmentObject var rootViewModel: RootViewModel
    
    // Vista
    var body: some View {
        switch rootViewModel.status {
            case Status.none:
                SplashView()
            case Status.login:
                LoginView()
            case Status.register:
                RegisterView()
            case Status.recoverPassword:
                RecoverPasswordView()
            case Status.products:
                ProductsView()
            case .error(error: let error):
                Text("Te estoy devolviendo un error \(error)")
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
