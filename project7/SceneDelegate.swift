//
//  SceneDelegate.swift
//  project7
//
//  Created by Waterflow Technology on 08/04/2025.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    
        guard let _ = (scene as? UIWindowScene) else { return }
        // on creating a window by ourself from scratch
        // guard let windowScene = (scene as? UIWindowScene) else { return }
        // window = UIWindow(windowScene: windowScene)
    
        if let tabBarController = window?.rootViewController as? UITabBarController {
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "NavController") as? UINavigationController
            vc?.tabBarItem = UITabBarItem(tabBarSystemItem: .topRated, tag: 1)
            tabBarController.viewControllers?.append(vc!)
           
            // Set the root and show the window
//            window?.rootViewController = tabBarController
//            window?.makeKeyAndVisible()
            
            //self.window = window
            //on creating a window by ourself from scratch
            //here we are using the existing window built from our storyboard (Interface Builder)
            //We are not creating a new window instance as window = UIWindow(windowScene: windowScene)
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
 
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    
    }

    func sceneWillResignActive(_ scene: UIScene) {

    }

    func sceneWillEnterForeground(_ scene: UIScene) {

    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

