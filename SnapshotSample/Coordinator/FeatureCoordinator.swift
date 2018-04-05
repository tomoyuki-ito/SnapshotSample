//
//  FeatureCoordinator.swift
//  SnapshotSample
//
//  Created by Tomoyuki Ito on 2018/04/04.
//  Copyright © 2018 Nagisa Inc. All rights reserved.
//

import UIKit

class FeatureCoordinator: Coordinator {
    
    var mainViewController: UIViewController?
    
    init() {
        let label = UILabel()
        label.text = "特集"
        label.textAlignment = .center
        
        let button = UIButton()
        button.setTitle("詳細へ", for: .normal)
        
        mainViewController = InjectionViewController(views: [label, button])

        button.addTarget(self, action: #selector(pushDetail), for: .touchUpInside)
    }
    
    func start() {
    }
    
    @objc func pushDetail() {
        let label = UILabel()
        label.backgroundColor = .lightGray
        label.text = "詳細"
        label.textAlignment = .center
        let viewController = InjectionViewController(view: label)
        mainViewController?.navigationController?.pushViewController(viewController, animated: true)
    }
    
}
