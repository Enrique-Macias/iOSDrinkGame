//
//  ChallengeViewController.swift
//  Ponte Pedo
//
//  Created by Enrique Macias on 2/15/23.
//

import UIKit

class ChallengeViewController: UIViewController {
    
    @IBAction func dismissBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let parentViewBound = self.presentingViewController?.view.bounds
        view.frame = CGRect(x: 0, y: 0, width: 360, height: 600)
        view.center = CGPoint(x: parentViewBound!.midX, y: parentViewBound!.midY)
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = true
    }
    
}
