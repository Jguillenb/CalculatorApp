//
//  AppDelegate.swift
//  Calculator-iOS
//
//  Created by Serhii Liamtsev on 4/9/22.
//

import UIKit

@main
final class AppDelegate: UIResponder {

}

    enum environmentType {
        case development, production
    }
     
//    let environment:environmentType = .production
//
//    switch environment {
//    case .development:
//        // set web service URL to development
//        // set API keys to development
//        print("It's for development")
//    case .production:
//        // set web service URL to production
//        // set API keys to production
//        print("It's for production")
//    }

// MARK: - UIApplicationDelegate
extension AppDelegate: UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }

    // MARK: - UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        
    }

        func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
            return UIInterfaceOrientationMask.portrait
        }

    }
