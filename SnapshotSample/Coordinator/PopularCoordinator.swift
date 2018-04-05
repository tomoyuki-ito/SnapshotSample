//
//  PopularCoordinator.swift
//  SnapshotSample
//
//  Created by Tomoyuki Ito on 2018/04/04.
//  Copyright © 2018 Nagisa Inc. All rights reserved.
//

import UIKit

class PopularCoordinator: NavigationCoordinator {
    
    let navigationController = UINavigationController()
    lazy var rootViewController: UIViewController = self.createPopularViewController()

    init() {
        navigationController.tabBarItem = UITabBarItem(title: "人気", image: nil, tag: 0)
    }
    
    @objc func pushRanking() {
        let label = UILabel()
        label.backgroundColor = .lightGray
        label.text = "ランキング"
        label.textAlignment = .center
        let vc = InjectionViewController(view: label)
        navigationController.pushViewController(vc, animated: true)
    }
    
    private func createPopularViewController() -> UIViewController {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 0
        stackView.isUserInteractionEnabled = true
        
        let label = UILabel()
        label.text = "人気"
        label.textAlignment = .center
        stackView.addArrangedSubview(label)
        
        let button = UIButton()
        button.setTitle("ランキングへ", for: .normal)
        button.addTarget(self, action: #selector(pushRanking), for: .touchUpInside)
        stackView.addArrangedSubview(button)
        
        let view = UIView()
        view.backgroundColor = .lightGray
        stackView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        stackView.frame = view.bounds
        view.addSubview(stackView)
        
        return InjectionViewController(view: view)
    }
    
}
