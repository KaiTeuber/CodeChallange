//
//  ApplicationFlow.swift
//  CodeChallange
//
//  Created by Kai-Marcel Teuber on 16.09.19.
//  Copyright © 2019 App-Developers.de. All rights reserved.
//

import UIKit

class ApplicationFlow: UINavigationController {

    // MARK: - init
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("not supported")
    }
    
    // MARK: - overrides
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        presentLoginViewController()
    }

    // MARK: - Protocol <#Name#>
    
    // MARK: - public
    
    // MARK: - private
    
    private func presentLoginViewController() {
        let loginViewController = LoginViewController()
        present(loginViewController, animated: true)
    }

}
