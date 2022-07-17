//
//  ProductsViewModel.swift
//  Shoes4u
//
//  Created by Mikel Cobian on 3/7/22.
//

import Foundation
import SwiftUI
import Combine
import Firebase
import FirebaseCore
import FirebaseFirestore

 class ProductsViewModel: ObservableObject {
    let db = Firestore.firestore()
    @Published var products : [Product?]
    
     init(){
         
     }
    //var productosDevueltos = Set<AnyCancellable>()
    
    func getProducts(){
           
        db.collection("products").whereField("name", isNotEqualTo: "").getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    print("\(document.documentID) => \(document.data())")
                    
                }
            }
    }
    }
    
}

extension Color {
    // <------- Color del fondo de la app ----->
    public static var EqButtonAction: Color {
       return Color(UIColor(red: 174/255, green: 207/255, blue: 209/255, alpha: 1.0))
    }
}
