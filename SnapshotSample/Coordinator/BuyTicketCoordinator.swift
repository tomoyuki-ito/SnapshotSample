//
//  BuyTicketCoordinator.swift
//  SnapshotSample
//
//  Created by Tomoyuki Ito on 2018/04/05.
//  Copyright © 2018 Nagisa Inc. All rights reserved.
//

import UIKit

class BuyTicketCoordinator: NavigationCoordinator {
    
    let navigationController = UINavigationController()
    lazy var rootViewController: UIViewController = self.createBuyTicketViewController()
    
    init() {
    }
    
    @objc func pushBuyCoin() {
        let label = UILabel()
        label.backgroundColor = .lightGray
        label.text = "コイン購入"
        label.textAlignment = .center
        let vc = InjectionViewController(view: label)
        navigationController.pushViewController(vc, animated: true)
    }
    
    private func createBuyTicketViewController() -> UIViewController {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 0
        stackView.isUserInteractionEnabled = true
        
        let label = UILabel()
        label.text = "チケット購入"
        label.textAlignment = .center
        stackView.addArrangedSubview(label)
        
        let button = UIButton()
        button.setTitle("コイン購入へ", for: .normal)
        button.addTarget(self, action: #selector(pushBuyCoin), for: .touchUpInside)
        stackView.addArrangedSubview(button)
        
        let view = UIView()
        view.backgroundColor = .lightGray
        stackView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        stackView.frame = view.bounds
        view.addSubview(stackView)
        
        return InjectionViewController(view: view)
    }
    
}
