//
//  ViewController.swift
//  HW2
//
//  Created by Onur Parlak on 25.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var sampleView: SampleView!
    @IBOutlet private weak var updatedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerObserver()
        // Do any additional setup after loading the view.
    }
    
    func registerObserver() {
            NotificationCenter.default.addObserver(
                self,
                selector: #selector(textChanged(notification:)),
                name: .textValueChanged,
                object: nil
            )
        }
    @objc
        func textChanged(notification: Notification) {
            guard let text = notification.userInfo?["newValue"] as? String else { return }
            updatedLabel.text = text
        }

}

