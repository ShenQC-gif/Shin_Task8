//
//  RootViewController.swift
//  Task8
//
//  Created by ちいつんしん on 2021/06/15.
//

import UIKit

class RootViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let nextVC = self.viewControllers?[0] as? GreenViewController {
            nextVC.delegate = self
        }

        if let nextVC = self.viewControllers?[1] as? RedViewController {
            nextVC.delegate = self
        }

    }
}

extension RootViewController: sendValueToRedDelegate {
    func sendValueToRed(value: Float) {
        if let nextVC = self.viewControllers?[1] as? RedViewController {

            // RedVCが読み込まれたかをnilチェック。初期画面ではtabbarでRedVCをタップしなければ読み込まれない。
            guard nextVC.labelForRedVC != nil, nextVC.sliderForRedVC != nil else {
                nextVC.sliderValueForRedVC = value
                return
            }

            // RedVCが読み込まれたあとは、直接値を変更
            nextVC.labelForRedVC.text = "\(value)"
            nextVC.sliderForRedVC.value = value
        }
    }
}

extension RootViewController: sendValueToGreenDelegate {

    func sendValueToGreen(value: Float) {
        if let nextVC = self.viewControllers?[0] as? GreenViewController {

            nextVC.labelForGreenVC.text = "\(value)"
            nextVC.sliderForGreenVC.value = value
        }
    }

}
