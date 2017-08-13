//
//  AppDelegate.swift
//  First
//
//  Created by Seti Vega on 8/5/17.
//  Copyright © 2017 SetiVega. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
       
        FirebaseApp.configure()

        return true
    }

}
