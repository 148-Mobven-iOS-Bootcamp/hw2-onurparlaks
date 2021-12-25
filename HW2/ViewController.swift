//
//  ViewController.swift
//  HW2
//
//  Created by Onur Parlak on 25.12.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var updatedLabel: UILabel!
    @IBOutlet weak var sampleView: SampleView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sampleView.onTextChanged = { text in
            self.updatedLabel.text = text
        }
    }


}

