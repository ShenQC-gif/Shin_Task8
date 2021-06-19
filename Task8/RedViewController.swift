//
//  RedViewController.swift
//  Task8
//
//  Created by ちいつんしん on 2021/06/15.
//

import UIKit

class RedViewController: UIViewController {

    private var repository: ValueRepository!

    @IBOutlet private weak var valueLabel: UILabel!
    @IBOutlet private weak var valueSlider: UISlider!

    func setup(repository: ValueRepository) {
        self.repository = repository
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let value = repository.load()

        valueLabel.text = "\(value)"
        valueSlider.value = value
    }

    @IBAction func changeValue(_ sender: Any) {
        let value = valueSlider.value

        repository.save(value: value)

        valueLabel.text = "\(value)"
    }
}
