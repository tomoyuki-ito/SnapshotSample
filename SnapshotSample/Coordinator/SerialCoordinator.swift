//
//  SerialCoordinator.swift
//  SnapshotSample
//
//  Created by Tomoyuki Ito on 2018/04/04.
//  Copyright © 2018 Nagisa Inc. All rights reserved.
//

import UIKit

class SerialCoordinator: NavigationCoordinator {
    
    let navigationController = UINavigationController()
    let rootViewController: UIViewController

    init() {
        let label = UILabel()
        label.backgroundColor = .lightGray
        label.text = "連載"
        label.textAlignment = .center
        rootViewController = InjectionViewController(view: label)
        navigationController.tabBarItem = UITabBarItem(title: label.text, image: nil, tag: 0)
    }
    
}
