//
//  SplashView.swift
//  Shoes4u
//
//  Created by Conrado Capilla García on 30/6/22.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        VStack {
            Spacer()
            Image("LOGO")
            Spacer()
            Text("Shoes4u")
                .fontWeight(.black)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.brown)
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
