//
//  TextFieldAndImageView.swift
//  Shoes4u
//
//  Created by Conrado Capilla García on 30/6/22.
//

import SwiftUI

struct TextFieldAndImageView: View {
    
    let placeholder: String
    let image: String
    
    var body: some View {
        HStack {
            Spacer()
            TextField(placeholder, text: .constant(""))
                .padding(4)
                .overlay(RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.black, lineWidth: 2))
            Image(systemName: image)
                .resizable()
                .frame(width: 32.0, height: 32.0)
            Spacer()
        }
    }
}

struct TextFieldAndImageView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldAndImageView(placeholder: "Usuario", image: "person")
    }
}
