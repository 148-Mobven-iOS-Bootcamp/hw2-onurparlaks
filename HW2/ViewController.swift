//
//  ViewController.swift
//  HW2
//
//  Created by Onur Parlak on 25.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sampleView: SampleView!
    @IBOutlet weak var updatedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sampleView.delegate = self
        // Do any additional setup after loading the view.
    }
}
    extension ViewController: sampleViewDelegate {
        
        func textChanged(_ newValue : String) {
            updatedLabel.text = newValue
            
   }

}
