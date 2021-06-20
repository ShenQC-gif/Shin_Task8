//
//  RedViewController.swift
//  Task8
//
//  Created by ちいつんしん on 2021/06/15.
//

import UIKit

class RedViewController: UIViewController {

    private var repository: ValueRepository!

    @IBOutlet weak var labelForRedVC: UILabel!
    @IBOutlet weak var sliderForRedVC: UISlider!

    func setUp(repository: ValueRepository) {
        self.repository = repository
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let value = repository.load()

        labelForRedVC.text = "\(value)"
        sliderForRedVC.value = value

    }

    @IBAction func changeValue(_ sender: Any) {

        let value = sliderForRedVC.value
        repository.save(value: value)
        labelForRedVC.text = "\(value)"
    }

}
