//
//  HomeViewController.swift
//  Ponte Pedo
//
//  Created by Enrique Macias on 2/11/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var strBtn: UIButton!
    @IBOutlet weak var rulesbtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        strBtn.layer.cornerRadius = 8
        rulesbtn.layer.cornerRadius = 8
        strBtn.layer.masksToBounds = true
        rulesbtn.layer.masksToBounds = true

    }
    // Present the StartViewController when "Empezar" button is pressed
    @IBAction func startButton() {
        let startVC = storyboard?.instantiateViewController(withIdentifier: "start_VC") as!
        StartViewController
        startVC.modalPresentationStyle = .fullScreen
        present(startVC, animated: true, completion: nil)
    }
    
    // Present the RulesViewController when "Reglas" button is pressed
    @IBAction func rulesButton() {
        let rulesVC = storyboard?.instantiateViewController(withIdentifier: "rules_VC") as! RulesViewController
        present(rulesVC, animated: true, completion: nil)
    }
    
}
