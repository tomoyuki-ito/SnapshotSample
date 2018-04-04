//
//  ApplicationCoordinator.swift
//  SnapshotSample
//
//  Created by Tomoyuki Ito on 2018/04/04.
//  Copyright © 2018 Nagisa Inc. All rights reserved.
//

import UIKit

class ApplicationCoordinator: Coordinator {

    var mainViewController: UIViewController? { return self.window.rootViewController }

    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        self.window.rootViewController = createRootViewController()
        self.window.makeKeyAndVisible()
    }

    private func createRootViewController() -> UIViewController {
        let coordinators: [Coordinator] = [
            HomeCoordinator(),
            SerialCoordinator(),
            PopularCoordinator(),
            MagazineCoordinator(),
            SettingCoordinator()
        ]
        coordinators.forEach { $0.start() }
        let viewControllers: [UIViewController] = coordinators.flatMap { $0.mainViewController }
        
        let tabBarController = UITabBarController()
        tabBarController.setViewControllers(viewControllers, animated: false)
        return tabBarController
    }
    
}
