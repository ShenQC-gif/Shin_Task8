//
//  RedViewController.swift
//  Task8
//
//  Created by ちいつんしん on 2021/06/15.
//

import UIKit

protocol sendValueToGreenDelegate: class {
    func sendValueToGreen(value: Float)
}

class RedViewController: UIViewController {

    @IBOutlet weak var labelForRedVC: UILabel!
    @IBOutlet weak var sliderForRedVC: UISlider!

    var sliderValueForRedVC = Float()

    weak var delegate: sendValueToGreenDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        labelForRedVC.text = "\(sliderValueForRedVC)"
        sliderForRedVC.value = sliderValueForRedVC

    }

    @IBAction func changeValue(_ sender: Any) {

        sliderValueForRedVC = sliderForRedVC.value

        labelForRedVC.text = "\(sliderValueForRedVC)"

        delegate?.sendValueToGreen(value: sliderValueForRedVC)
    }

}
