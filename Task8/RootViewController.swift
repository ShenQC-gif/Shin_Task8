//
//  RootViewController.swift
//  Task8
//
//  Created by ちいつんしん on 2021/06/15.
//

import UIKit

class RootViewController: UITabBarController {

    private let repository = ValueRepository()

    override func viewDidLoad() {
        super.viewDidLoad()

        if let nextVC = self.viewControllers?[0] as? GreenViewController {
            nextVC.setup(repository: repository)
        }

        if let nextVC = self.viewControllers?[1] as? RedViewController {
            nextVC.setup(repository: repository)
        }
    }
}
