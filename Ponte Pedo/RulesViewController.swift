//
//  RulesViewController.swift
//  Ponte Pedo
//
//  Created by Enrique Macias on 2/11/23.
//

import UIKit

class RulesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        self.isModalInPresentation = true // Won't let slide down to closed the VC
    }
    
    @IBAction func doneButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
