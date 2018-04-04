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
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 0
        stackView.isUserInteractionEnabled = true
        
        let label = UILabel()
        label.text = "特集"
        label.textAlignment = .center
        stackView.addArrangedSubview(label)
        
        let button = UIButton()
        button.setTitle("詳細へ", for: .normal)
        stackView.addArrangedSubview(button)
        
        let view = UIView()
        view.backgroundColor = .lightGray
        stackView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        stackView.frame = view.bounds
        view.addSubview(stackView)
        
        mainViewController = InjectionViewController(view: view)
        
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
