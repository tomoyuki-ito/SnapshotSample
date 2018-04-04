//
//  Coordinator.swift
//  SnapshotSample
//
//  Created by Tomoyuki Ito on 2018/04/04.
//  Copyright © 2018 Nagisa Inc. All rights reserved.
//

import UIKit

protocol Coordinator: class {
    
    var mainViewController: UIViewController? { get }
    
    func start()

}

protocol NavigationCoordinator: Coordinator {
    
    var navigationController: UINavigationController { get }
    var rootViewController: UIViewController { get }
    
}

extension NavigationCoordinator {
    
    var mainViewController: UIViewController? { return self.navigationController }
    
    func start() {
        navigationController.setViewControllers([rootViewController], animated: false)
    }

}
