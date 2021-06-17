//
//  GreenViewController.swift
//  Task8
//
//  Created by ちいつんしん on 2021/06/15.
//

import UIKit

protocol sendValueToRedDelegate: class {
    func sendValueToRed(value: Float)
}

class GreenViewController: UIViewController {

    @IBOutlet weak var labelForGreenVC: UILabel!
    @IBOutlet weak var sliderForGreenVC: UISlider!

    private var sliderValueForGreenVC = Float()

    weak var delegate: sendValueToRedDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        labelForGreenVC.text = "\(sliderValueForGreenVC)"
        sliderForGreenVC.value = sliderValueForGreenVC
    }

    @IBAction func changeValue(_ sender: Any) {

        sliderValueForGreenVC = sliderForGreenVC.value

        labelForGreenVC.text = "\(sliderValueForGreenVC)"

        delegate?.sendValueToRed(value: sliderValueForGreenVC)
    }

}
