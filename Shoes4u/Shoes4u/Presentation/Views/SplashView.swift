//
//  SplashView.swift
//  Shoes4u
//
//  Created by Conrado Capilla García on 30/6/22.
//

import SwiftUI

struct SplashView: View {
    
    // Variables
    @EnvironmentObject var rootViewModel: RootViewModel
    
    // Vista
    var body: some View {
        VStack {
            Spacer()
            Image("LOGO")
                .resizable()
                .scaledToFit()
                .frame(width: 180, height: 180)
            Spacer()
            Image("Shoes4u")
                .resizable()
                .scaledToFit()
                .padding([.leading, .trailing], 60)
                .padding(.bottom, 30)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding([.leading, .trailing], 25)
        .background(Color.mainBackground)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                withAnimation {
                    rootViewModel.status = Status.login
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
