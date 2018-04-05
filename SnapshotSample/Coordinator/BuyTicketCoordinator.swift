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
        let barButtonItem = UIBarButtonItem(title: "閉じる", style: .plain, target: self, action: #selector(close))
        rootViewController.navigationItem.setLeftBarButton(barButtonItem, animated: false)
    }
    
    @objc func pushBuyCoin() {
        let label = UILabel()
        label.backgroundColor = .lightGray
        label.text = "コイン購入"
        label.textAlignment = .center
        let vc = InjectionViewController(view: label)
        navigationController.pushViewController(vc, animated: true)
    }
    
    @objc func close() {
        self.mainViewController?.dismiss(animated: true, completion: nil)
    }
    
    private func createBuyTicketViewController() -> UIViewController {
        let label = UILabel()
        label.text = "チケット購入"
        label.textAlignment = .center
        
        let button = UIButton()
        button.setTitle("コイン購入へ", for: .normal)
        button.addTarget(self, action: #selector(pushBuyCoin), for: .touchUpInside)
        
        return InjectionViewController(views: [label, button])
    }
    
}
