//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Tran Minh Thien on 28/6/24.
//

import SwiftUI
import FirebaseCore

//class AppDelegate: NSObject, UIApplicationDelegate {
//  func application(_ application: UIApplication,
//                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//    FirebaseApp.configure()
//
//    return true
//  }
//}

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    // register app delegate for Firebase setup
//      @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
