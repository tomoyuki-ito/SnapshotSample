//
//  MagazineCoordinator.swift
//  SnapshotSample
//
//  Created by Tomoyuki Ito on 2018/04/04.
//  Copyright © 2018 Nagisa Inc. All rights reserved.
//

import UIKit

class MagazineCoordinator: NavigationCoordinator {
    
    let navigationController = UINavigationController()
    let rootViewController: UIViewController
    let buyTicketCoordinator = BuyTicketCoordinator()

    init() {
        let label = UILabel()
        label.text = "雑誌"
        label.textAlignment = .center
        
        let button = UIButton()
        button.setTitle("チケット購入へ", for: .normal)

        rootViewController = InjectionViewController(views: [label, button])
        
        button.addTarget(self, action: #selector(presentBuyTicket), for: .touchUpInside)
        navigationController.tabBarItem = UITabBarItem(title: label.text, image: nil, tag: 0)
    }
    
    @objc func presentBuyTicket() {
        buyTicketCoordinator.start()
        if let vc = buyTicketCoordinator.mainViewController {
            self.mainViewController?.present(vc, animated: true, completion: nil)
        }
    }

}
