//
//  ThanksViewController.swift
//  Ponte Pedo
//
//  Created by Enrique Macias on 2/11/23.
//

import UIKit

class ThanksViewController: UIViewController {
    
    @IBOutlet weak var menuBtn: UIButton!
    @IBAction func goHomeButton(_ sender: Any) {
        let goHome = storyboard?.instantiateViewController(withIdentifier: "home_VC") as! HomeViewController
        goHome.modalPresentationStyle = .fullScreen
        present(goHome, animated: true, completion: nil)
    }
    
    @IBAction func instagramButton(_ sender: Any) {
        if let appURL = URL(string: "instagram://user?username=pontepedoapp") {
            if UIApplication.shared.canOpenURL(appURL) {
                UIApplication.shared.open(appURL, options: [:], completionHandler: nil)
            }
        }
        
    }
    
    @IBAction func facebookButton(_ sender: Any) {
        if let appUrl = URL(string: "fb://profile/100063763224754"){
            if UIApplication.shared.canOpenURL(appUrl) {
                UIApplication.shared.open(appUrl, options: [:], completionHandler: nil)
            }
        }
    }
    
         
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuBtn.layer.cornerRadius = 10
        menuBtn.layer.masksToBounds = true

    }
    
}
