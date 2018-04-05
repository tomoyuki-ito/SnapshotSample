//
//  HomeCoordinator.swift
//  SnapshotSample
//
//  Created by Tomoyuki Ito on 2018/04/04.
//  Copyright © 2018 Nagisa Inc. All rights reserved.
//

import UIKit

class HomeCoordinator: NavigationCoordinator {
    
    let navigationController = UINavigationController()
    lazy var rootViewController: UIViewController = self.createHomeViewController()
    let featureCoordinator = FeatureCoordinator()
    
    init() {
        navigationController.tabBarItem = UITabBarItem(title: "ホーム", image: nil, tag: 0)
    }

    @objc func pushFeature() {
        featureCoordinator.start()
        if let vc = featureCoordinator.mainViewController {
            navigationController.pushViewController(vc, animated: true)
        }
    }
    
    private func createHomeViewController() -> UIViewController {
        let label = UILabel()
        label.text = "ホーム"
        label.textAlignment = .center
        
        let button = UIButton()
        button.setTitle("特集へ", for: .normal)
        button.addTarget(self, action: #selector(pushFeature), for: .touchUpInside)
        
        return InjectionViewController(views: [label, button])
    }
    
}
