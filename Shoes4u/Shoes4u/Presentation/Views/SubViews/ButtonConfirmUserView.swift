//
//  ButtonConfirmUserView.swift
//  Shoes4u
//
//  Created by Conrado Capilla García on 30/6/22.
//

import SwiftUI

struct ButtonConfirmUserView: View {
    
    let textButton: String
    
    var body: some View {
        Text(textButton)
            .fontWeight(.medium)
            .padding([.bottom, .top], 8)
            .padding([.leading, .trailing], 14)
            .foregroundColor(Color.white)
            .background(Color.secondaryBackground)
            .cornerRadius(5)
    }
}

struct ButtonConfirmUserView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonConfirmUserView(textButton: "ENTRAR")
    }
}
