//
//  AppDelegate.swift
//  CoolKeyboard
//
//  Created by Igor Tarasenko on 15/01/18.
//  Copyright © 2018 Igor Tarasenko. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        window?.rootViewController = UIViewController()
        window?.makeKeyAndVisible()
        return true
    }
}

