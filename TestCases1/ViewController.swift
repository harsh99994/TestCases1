//
//  ViewController.swift
//  TestCases1
//
//  Created by Harsh_Appinventiv on 04/04/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let ferrari = CarsWay(type: .sport, transmissionMode: .drive)
        ferrari.start(minutes: 120)
        print(ferrari.miles)
    }

    @IBAction func b1(_ sender: Any) {
        self.view.backgroundColor = .yellow
    }

    @IBAction func b2(_ sender: Any) {
        self.view.backgroundColor = .orange
    }
}
