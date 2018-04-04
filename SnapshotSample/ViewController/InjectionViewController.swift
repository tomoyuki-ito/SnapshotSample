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
    
}
