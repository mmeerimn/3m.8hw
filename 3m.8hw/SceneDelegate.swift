//
//  SceneDelegate.swift
//  3m.8hw
//
//  Created by Meerim Mamatkadyrova on 11/6/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        
        let mainVC = MainViewController()
        
        let tabOneBarItem = UITabBarItem(title: "Home",
                                         image: UIImage(systemName: "house"),
                                         selectedImage: UIImage(systemName: "house"))
        
        mainVC.tabBarItem = tabOneBarItem
        
        let secondVC = SearchViewController()
        
        let tabTwoeBarItem = UITabBarItem(title: "Search",
                                          image: UIImage(systemName: "magnifyingglass"),
                                          selectedImage: UIImage(systemName: "magnifyingglass"))
        
        secondVC.tabBarItem = tabTwoeBarItem
        
        let navController2 = UINavigationController(rootViewController:  secondVC)
        
        let addVC = AddViewController()
        
        let tabThreeBarItem = UITabBarItem(title: "Add product",
                                         image: UIImage(systemName: "person"),
                                         selectedImage: UIImage(systemName: "person"))
        
        addVC.tabBarItem = tabThreeBarItem
        
        let tabbarController = UITabBarController()
        tabbarController.viewControllers = [mainVC, navController2, addVC]
        tabbarController.tabBar.backgroundColor = .white
        
        window.rootViewController = tabbarController
        
        
        self.window = window
        self.window?.makeKeyAndVisible()
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}
