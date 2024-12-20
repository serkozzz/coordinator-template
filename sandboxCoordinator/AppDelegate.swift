//
//  AppDelegate.swift
//  sandboxCoordinator
//
//  Created by Sergey Kozlov on 19.12.2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var rootCoordinator: RootViewControllerCoordinator!
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        rootCoordinator = RootViewControllerCoordinator()
        rootCoordinator.show(from: nil)
        window = rootCoordinator.window
        window!.makeKeyAndVisible()
        print("Window is key: \(window!.isKeyWindow)")
        return true
    }
}

