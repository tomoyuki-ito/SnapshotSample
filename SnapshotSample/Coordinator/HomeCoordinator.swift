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
    let rootViewController: UIViewController
    let featureCoordinator = FeatureCoordinator()
    
    init() {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 0
        stackView.isUserInteractionEnabled = true
        
        let label = UILabel()
        label.text = "ホーム"
        label.textAlignment = .center
        stackView.addArrangedSubview(label)
        
        let button = UIButton()
        button.setTitle("特集へ", for: .normal)
        stackView.addArrangedSubview(button)
        
        let view = UIView()
        view.backgroundColor = .lightGray
        stackView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        stackView.frame = view.bounds
        view.addSubview(stackView)
        
        rootViewController = InjectionViewController(view: view)
        navigationController.tabBarItem = UITabBarItem(title: label.text, image: nil, tag: 0)
        
        button.addTarget(self, action: #selector(pushFeature), for: .touchUpInside)
    }

    @objc func pushFeature() {
        featureCoordinator.start()
        if let vc = featureCoordinator.mainViewController {
            navigationController.pushViewController(vc, animated: true)
        }
    }
    
}
