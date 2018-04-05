//
//  InjectionViewController.swift
//  SnapshotSample
//
//  Created by Tomoyuki Ito on 2018/04/04.
//  Copyright © 2018 Nagisa Inc. All rights reserved.
//

import UIKit

public class InjectionViewController: UIViewController {
    
    var injection: UIView?
    
    public convenience init(view: UIView) {
        self.init(nibName: nil, bundle: nil)
        injection = view
    }
    
    public convenience init(views: [UIView]) {
        self.init(nibName: nil, bundle: nil)
        injection = stacking(views: views)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
    }
    
    public override func loadView() {
        if let view = injection {
            self.view = view
        }
    }
    
    private func stacking(views: [UIView]) -> UIView {
        let stackView = UIStackView(arrangedSubviews: views)
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 0
        stackView.isUserInteractionEnabled = true

        let view = UIView()
        view.backgroundColor = .lightGray
        stackView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        stackView.frame = view.bounds
        view.addSubview(stackView)

        return view
    }

}
