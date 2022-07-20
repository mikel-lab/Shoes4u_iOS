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
<<<<<<< HEAD
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var rootViewModel = RootViewModel()
    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(rootViewModel)
=======
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate: AppDelegate
    
    var body: some Scene {
        WindowGroup {
            ProductsView()
>>>>>>> mikel
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        FirebaseApp.configure()
        return true
    }
    
}
