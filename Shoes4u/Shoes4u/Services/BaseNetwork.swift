//
//  BaseNetwork.swift
//  Shoes4u
//
//  Created by Mikel Cobian on 10/7/22.
//
import Foundation
import SwiftUI
import Combine
import Firebase
import FirebaseCore
import FirebaseFirestore

private let db = Firestore.firestore()



struct BaseNetwork {
    
   
    
    func getSessionProducts(){
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
