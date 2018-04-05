//
//  SettingCoordinator.swift
//  SnapshotSample
//
//  Created by Tomoyuki Ito on 2018/04/04.
//  Copyright © 2018 Nagisa Inc. All rights reserved.
//

import UIKit

class SettingCoordinator: NavigationCoordinator {
    
    let navigationController = UINavigationController()
    lazy var rootViewController: UIViewController = self.createSettingViewController()

    init() {
        navigationController.tabBarItem = UITabBarItem(title: "設定", image: nil, tag: 0)
    }
    
    @objc func pushCoinHistory() {
        let label = UILabel()
        label.backgroundColor = .lightGray
        label.text = "コイン履歴"
        label.textAlignment = .center
        let vc = InjectionViewController(view: label)
        navigationController.pushViewController(vc, animated: true)
    }
    
    private func createSettingViewController() -> UIViewController {
        let label = UILabel()
        label.text = "設定"
        label.textAlignment = .center
        
        let button = UIButton()
        button.setTitle("コイン履歴へ", for: .normal)
        button.addTarget(self, action: #selector(pushCoinHistory), for: .touchUpInside)
        
        return InjectionViewController(views: [label, button])
    }
    
}
