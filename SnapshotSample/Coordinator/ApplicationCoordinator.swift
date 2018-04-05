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
    let coordinators: [Coordinator] = [
        HomeCoordinator(),
        SerialCoordinator(),
        PopularCoordinator(),
        MagazineCoordinator(),
        SettingCoordinator()
    ]

    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        self.window.rootViewController = createTutorialViewController()
        self.window.makeKeyAndVisible()
    }

    private func createTutorialViewController() -> UIViewController {
        let label = UILabel()
        label.text = "チュートリアル"
        label.textAlignment = .center
        
        let button = UIButton()
        button.setTitle("Topへ", for: .normal)
        button.addTarget(self, action: #selector(changeRootToTabs), for: .touchUpInside)
        
        let vc = InjectionViewController(views: [label, button])
        return vc
    }
    
    @objc func changeRootToTabs() {
        let vc = createTabBarController()
        window.rootViewController = vc
    }

    private func createTabBarController() -> UIViewController {
        coordinators.forEach { $0.start() }
        let viewControllers: [UIViewController] = coordinators.flatMap { $0.mainViewController }
        
        let tabBarController = UITabBarController()
        tabBarController.setViewControllers(viewControllers, animated: false)
        return tabBarController
    }
    
}
