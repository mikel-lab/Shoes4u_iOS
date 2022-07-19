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
import FirebaseFirestoreSwift
 final class ProductsViewModel: ObservableObject {
     var db : Firestore = Firestore.firestore()
     var productosDevueltos = Set<AnyCancellable>()
     @Published var products : [Product]?
     
     init(){
         self.getProducts2()
     }

     
     func getProducts(){
         
         db.collection("products").whereField("name", isNotEqualTo: "").getDocuments() { (querySnapshot, err) in
             if let err = err {
                 print("Error getting documents: \(err)")
             } else {
                 for document in querySnapshot!.documents {
                     print("\(document.documentID) => \(document.data())")
                     //products.append(document)
                     
                 }
             }
         }
     }
     
     func getProducts2(){
         
         db.collection("products").addSnapshotListener { (querySnapshot, Error) in
             guard let documents = querySnapshot?.documents else {
                 print("No documents")
                 return
             }
             
             self.products = documents.compactMap({ (QueryDocumentSnapshot) -> Product? in
                 print("\(String(describing: self.products))")
                 return try? QueryDocumentSnapshot.data(as: Product.self)
             })
         }
     }
     
     
}

extension Color {
    // <------- Color del fondo de la app ----->
    public static var EqButtonAction: Color {
       return Color(UIColor(red: 174/255, green: 207/255, blue: 209/255, alpha: 1.0))
    }
}
