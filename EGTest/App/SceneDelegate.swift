//
//  SceneDelegate.swift
//  EGTest
//
//  Created by OLAJUWON BALOGUN on 28/02/2021.
//

import UIKit
import IQKeyboardManagerSwift

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        startApp(scene: scene)
        IQKeyboardManager.shared.enable = true
        IQKeyboardManager.shared.shouldResignOnTouchOutside = true
    }

}

extension SceneDelegate {
    private func startApp(scene: UIScene){
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = HomeViewController()
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}
