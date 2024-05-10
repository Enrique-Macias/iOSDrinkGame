//
//  StartViewController.swift
//  Ponte Pedo
//
//  Created by Enrique Macias on 2/11/23.
//

import UIKit

class StartViewController: UIViewController {
    @IBOutlet weak var cardView: UIImageView!
    @IBOutlet weak var tituloView: UILabel!
    @IBOutlet weak var shuffleBtn: UIButton!
    @IBOutlet weak var cardsLeft: UILabel!
    @IBOutlet weak var ninesLeft: UILabel!
    @IBOutlet weak var restartBtn: UIImageView!
    
    var selectedImages: UIImage!
    
    var cardsArray = [UIImage(named: "T-C"), UIImage(named: "9-E"), UIImage(named: "3-D"), UIImage(named: "Q-T"), UIImage(named: "8-C"), UIImage(named: "T-E"), UIImage(named: "6-D"), UIImage(named: "9-T"), UIImage(named: "4-C"), UIImage(named: "7-E"), UIImage(named: "2-T"), UIImage(named: "9-D"), UIImage(named: "2-C"), UIImage(named: "5-T"), UIImage(named: "10-D"), UIImage(named: "B-E"), UIImage(named: "T-T"), UIImage(named: "6-C"), UIImage(named: "2-E"), UIImage(named: "K-D"), UIImage(named: "10-C"), UIImage(named: "8-D"), UIImage(named: "K-T"), UIImage(named: "3-E"), UIImage(named: "Q-C"), UIImage(named: "6-E"), UIImage(named: "B-D"), UIImage(named: "7-T"), UIImage(named: "T-D"), UIImage(named: "9-C"), UIImage(named: "3-T"), UIImage(named: "K-E"), UIImage(named: "3-C"), UIImage(named: "10-E"), UIImage(named: "2-D"), UIImage(named: "4-T"), UIImage(named: "Q-D"), UIImage(named: "7-C"), UIImage(named: "4-E"), UIImage(named: "5-D"), UIImage(named: "10-T"), UIImage(named: "5-C"), UIImage(named: "6-T"), UIImage(named: "7-D"), UIImage(named: "5-E"), UIImage(named: "K-C"), UIImage(named: "8-T"), UIImage(named: "Q-E"), UIImage(named: "B-T"), UIImage(named: "4-D"), UIImage(named: "8-E"), UIImage(named: "B-C")]
    
    var cardsLeftNumber = 52
    var displayedCards: UIImage?
    var cardCounter = 0
    
    
    // Action to shuffle the deck of cards randomly
    @IBAction func shuffleDeckButton(_ sender: UIButton) {
        if cardsLeftNumber == 0 {
            shuffleBtn.isEnabled = false
            tituloView.text = "FIN DEL JUEGO"
            let thankVC = storyboard?.instantiateViewController(withIdentifier: "thank_VC") as! ThanksViewController
            thankVC.modalPresentationStyle = .fullScreen
            present(thankVC, animated: true, completion: nil)
            
        } else {
            let randomDK = Int.random(in: 0..<cardsArray.count)
            if let deckNew = cardsArray[randomDK] {
                displayedCards = deckNew
                cardView.image = deckNew
                cardsArray.remove(at: randomDK)
                cardsLeftNumber -= 1
                cardsLeft.text = "CARTAS RESTANTES: \(cardsLeftNumber)"
                
                
                if deckNew == UIImage(named: "T-C") || deckNew == UIImage(named: "T-E") || deckNew == UIImage(named: "T-D") || deckNew == UIImage(named: "T-T") {
                    tituloView.text = "T: TOMAN TODOS"
                    ninesLeft.text = " "
                    
                } else if deckNew == UIImage(named: "2-C") || deckNew == UIImage(named: "2-E") || deckNew == UIImage(named: "2-D") || deckNew == UIImage(named: "2-T") {
                    tituloView.text = "2: PALABRA PROHIBIDA"
                    ninesLeft.text = " "
                    
                } else if deckNew == UIImage(named: "3-C") || deckNew == UIImage(named: "3-E") || deckNew == UIImage(named: "3-D") || deckNew == UIImage(named: "3-T") {
                    tituloView.text = "3: VOY A LLEVAR AL PICNIC"
                    ninesLeft.text = " "
                    
                } else if deckNew == UIImage(named: "4-C") || deckNew == UIImage(named: "4-E") || deckNew == UIImage(named: "4-D") || deckNew == UIImage(named: "4-T") {
                    tituloView.text = "4: CARICACHUPAS"
                    ninesLeft.text = " "
                    
                } else if deckNew == UIImage(named: "5-C") || deckNew == UIImage(named: "5-E") || deckNew == UIImage(named: "5-D") || deckNew == UIImage(named: "5-T")  {
                    tituloView.text = "5: YO NUNCA NUNCA"
                    ninesLeft.text = " "
                    
                } else if deckNew == UIImage(named: "6-C") || deckNew == UIImage(named: "6-E") || deckNew == UIImage(named: "6-D") || deckNew == UIImage(named: "6-T")  {
                    tituloView.text = "6: FRUTITAS"
                    ninesLeft.text = " "
                    
                } else if deckNew == UIImage(named: "7-C") || deckNew == UIImage(named: "7-E") || deckNew == UIImage(named: "7-D") || deckNew == UIImage(named: "7-T")  {
                    tituloView.text = "7: 7 PUM"
                    ninesLeft.text = " "
                    
                } else if deckNew == UIImage(named: "8-C") || deckNew == UIImage(named: "8-E") || deckNew == UIImage(named: "8-D") || deckNew == UIImage(named: "8-T")  {
                    tituloView.text = "8: REGLA"
                    ninesLeft.text = " "
                    
                } else if deckNew == UIImage(named: "9-C") || deckNew == UIImage(named: "9-E") || deckNew == UIImage(named: "9-D") || deckNew == UIImage(named: "9-T")  {
                    tituloView.text = "9: VASO AL CENTRO"
                    cardCounter += 1
                    ninesLeft.text = "Veces que ha aparecido el 9: \(cardCounter)"
                    if cardCounter == 3 {
                        ninesLeft.text = "El sig jugador toma del vaso"
                    }
                    
                } else if deckNew == UIImage(named: "10-C") || deckNew == UIImage(named: "10-E") || deckNew == UIImage(named: "10-D") || deckNew == UIImage(named: "10-T")  {
                    tituloView.text = "10: PREGUNTAS"
                    ninesLeft.text = " "
                    
                } else if deckNew == UIImage(named: "B-C") || deckNew == UIImage(named: "B-E") || deckNew == UIImage(named: "B-D") || deckNew == UIImage(named: "B-T")  {
                    tituloView.text = "B: TOMA EL DE LA IZQUIERDA"
                    ninesLeft.text = " "
                    
                } else if deckNew == UIImage(named: "Q-C") || deckNew == UIImage(named: "Q-E") || deckNew == UIImage(named: "Q-D") || deckNew == UIImage(named: "Q-T")  {
                    tituloView.text = "Q: TOMA EL DE LA DERECHA"
                    ninesLeft.text = " "
                    
                } else if deckNew == UIImage(named: "K-C") || deckNew == UIImage(named: "K-E") || deckNew == UIImage(named: "K-D") || deckNew == UIImage(named: "K-T")  {
                    tituloView.text = "K: TOMAS TÚ"
                    ninesLeft.text = " "
                    
                }
            }
            
        }

        if cardCounter == 4 {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                let challenge = self.storyboard?.instantiateViewController(withIdentifier: "challenge_VC") as! ChallengeViewController
                //challenge.modalPresentationStyle = .fullScreen
                self.present(challenge, animated: true, completion: nil)
                self.cardCounter = 0
            }
        }
        
    }
    // Action of Information Button when pressed it present InformationVC
    @IBAction func informationBtn(_ sender: Any) {
        if let displayedCards = displayedCards {
            let infoVC = storyboard?.instantiateViewController(withIdentifier: "info_VC") as! InformationViewController
            infoVC.displayedCards = displayedCards
            present(infoVC, animated: true, completion: nil)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardView.image = UIImage(named: "reverso")
        tituloView.text = "PRESIONA LA CARTA"
        updateLabel()
        cardsLeft.text = "CARTAS RESTANTES: 52"
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        restartBtn.isUserInteractionEnabled = true
        restartBtn.addGestureRecognizer(tapGesture)
        
    }
    
    @objc func imageTapped() {
        let alertController = UIAlertController(title: "Reiniciar", message: "¿Estás seguro de que quieres regresar?", preferredStyle: .alert)

        let cancelAction = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)

        let confirmAction = UIAlertAction(title: "Confirmar", style: .default) { _ in
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let homeViewController = storyboard.instantiateViewController(withIdentifier: "home_VC") as! HomeViewController
            homeViewController.modalPresentationStyle = .fullScreen
            self.present(homeViewController, animated: true, completion: nil)
        }

        alertController.addAction(cancelAction)
        alertController.addAction(confirmAction)

        present(alertController, animated: true, completion: nil)
    }

    
    func updateLabel() {
        tituloView.layer.cornerRadius = 20
        tituloView.backgroundColor = .clear
        tituloView.layer.borderColor = UIColor.black.cgColor
        tituloView.layer.borderWidth = 2.5
        tituloView.layer.masksToBounds = true
    }
    
    
}
