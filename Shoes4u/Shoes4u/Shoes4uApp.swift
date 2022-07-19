//
//  Shoes4uApp.swift
//  Shoes4u
//
//  Created by Mikel Cobian on 11/6/22.
//

import SwiftUI
import Firebase
import FirebaseFirestoreSwift


@main
struct Shoes4uApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate: AppDelegate
    
    var body: some Scene {
        WindowGroup {
            ProductsView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        FirebaseApp.configure()
        return true
    }
    
}
