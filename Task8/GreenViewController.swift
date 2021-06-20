//
//  GreenViewController.swift
//  Task8
//
//  Created by ちいつんしん on 2021/06/15.
//

import UIKit

class GreenViewController: UIViewController {

    private var repository: ValueRepository!

    @IBOutlet private weak var labelForGreenVC: UILabel!
    @IBOutlet private weak var sliderForGreenVC: UISlider!

    func setUp(repository: ValueRepository) {
        self.repository = repository

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let value = repository.load()
        labelForGreenVC.text = "\(value)"
        sliderForGreenVC.value = value

    }

    @IBAction func changeValue(_ sender: Any) {

        let value = sliderForGreenVC.value
        repository.save(value: value)
        labelForGreenVC.text = "\(value)"

    }

}
