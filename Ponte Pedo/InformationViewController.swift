//
//  InformationViewController.swift
//  Ponte Pedo
//
//  Created by Enrique Macias on 2/11/23.
//

import UIKit

class InformationViewController: UIViewController {
    var selectedImages: UIImage?
    var displayedCards: UIImage!
    
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        if displayedCards == UIImage(named: "T-C") || displayedCards == UIImage(named: "T-E") || displayedCards == UIImage(named: "T-D") || displayedCards == UIImage(named: "T-T") {
            infoLabel.text = "Todos los jugadores toman un shot o trago de su vaso."
            titleLabel.text = "T: TOMAN TODOS"
        } else if displayedCards == UIImage(named: "2-C") || displayedCards == UIImage(named: "2-E") || displayedCards == UIImage(named: "2-D") || displayedCards == UIImage(named: "2-T") {
            infoLabel.text = "La persona que tomó la carta escoge una palabra que los jugadores no podrán decir hasta que salga otro 2 y la palabra cambie. Toma el jugador que diga la palabra prohibida"
            titleLabel.text = "2: PALABRA PROHIBIDA"
        } else if displayedCards == UIImage(named: "3-C") || displayedCards == UIImage(named: "3-E") || displayedCards == UIImage(named: "3-D") || displayedCards == UIImage(named: "3-T") {
            infoLabel.text = "Comienza con la persona que sacó la carta, cada jugador deberá ecoger un objeto que llevaría a un picnic, el objeto debe comenzar con la letra del alfabeto que les corresponda. El juego se acaba hasta que alguien se equivoque."
            titleLabel.text = "3: VOY A LLEVAR AL PICNIC"
        } else if displayedCards == UIImage(named: "4-C") || displayedCards == UIImage(named: "4-E") || displayedCards == UIImage(named: "4-D") || displayedCards == UIImage(named: "4-T") {
            infoLabel.text = "Todos cantan una cancioncita que empieza: 'Caricachupas presenta nombres de' y el jugador que sacó la carta selecciona la categoría de la que van hablar. Cada persona deberá entonces nombrar algo que entre dentro de la categoría. El juego termina cuando alguien se equiovca."
            titleLabel.text = "4: CARICACHUPAS"
        } else if displayedCards == UIImage(named: "5-C") || displayedCards == UIImage(named: "5-E") || displayedCards == UIImage(named: "5-D") || displayedCards == UIImage(named: "5-T") {
            infoLabel.text = "El jugador que sacó la carta comienza diciendo 'Yo nunca nunca' y mencionando algo que jamás haya hecho. Los jugadores que SÍ lo hayan hecho deberán beber de su vaso. Entonces es turno de la siguiente persona que deberá hacer otra confesión. El juego termina después de una ronda."
            titleLabel.text = "5: YO NUNCA NUNCA"
        } else if displayedCards == UIImage(named: "6-C") || displayedCards == UIImage(named: "6-E") || displayedCards == UIImage(named: "6-D") || displayedCards == UIImage(named: "6-T") {
            infoLabel.text = "Cada jugador selecciona una fruta antes de comenzar. El que sacó la carta deberá llamar a otra fruta(jugador) en diminutivo, todo sin enseñar los dientes (tienes que cubrirlo con tus labios). El juego termina cuando algún jugador se ríe y muestre los dientes."
            titleLabel.text = "6: FRUTITAS"
        } else if displayedCards == UIImage(named: "7-C") || displayedCards == UIImage(named: "7-E") || displayedCards == UIImage(named: "7-D") || displayedCards == UIImage(named: "7-T") {
            infoLabel.text = "Este juego consiste en contar números a partir del 1, pero sin decir nunca el número 7 ni sus múltiplos. Comienza quien sacó la carta diciendo en voz alta el número uno, el siguiente jugador el número dos y así sucesivamente hasta llegar al 7 y sus múltiplos."
            titleLabel.text = "7: PUM"
        } else if displayedCards == UIImage(named: "8-C") || displayedCards == UIImage(named: "8-E") || displayedCards == UIImage(named: "8-D") || displayedCards == UIImage(named: "8-T") {
            infoLabel.text = "El jugador que sacó la carta deberá poner una regla que no se puede romper hasta que salga otra carta con el número 8. Toma de su vaso quien la rompa."
            titleLabel.text = "8: REGLA"
        } else if displayedCards == UIImage(named: "9-C") || displayedCards == UIImage(named: "9-E") || displayedCards == UIImage(named: "9-D") || displayedCards == UIImage(named: "9-T") {
            infoLabel.text = "Se pone un vaso al centro, el jugador que sacó la carta deberá verter un poco de su bebida al vaso, al cuarto jugador que saqué la carta 9 deberá beber de la mezcla del vaso."
            titleLabel.text = "9: VASO AL CENTRO"
        } else if displayedCards == UIImage(named: "10-C") || displayedCards == UIImage(named: "10-E") || displayedCards == UIImage(named: "10-D") || displayedCards == UIImage(named: "10-T") {
            infoLabel.text = "Este juego consiste en hacer preguntas sin dar respuestas. La persona que sacó la carta le hace una pregunta a alguien más pero esa persona no puede responder, deberá voltear con otra persona a hacerle otra pregunta y así sucesivamente. Pierde el que contesta la pregunta o se tarde en preguntar."
            titleLabel.text = "10: PREGUNTAS"
        } else if displayedCards == UIImage(named: "B-C") || displayedCards == UIImage(named: "B-E") || displayedCards == UIImage(named: "B-D") || displayedCards == UIImage(named: "B-T") {
            infoLabel.text = "La persona que está a la izquierda de quien sacó la carta toma un trago de su bebida o shot."
            titleLabel.text = "B: TOMA EL DE LA IZQUIERDA"
        } else if displayedCards == UIImage(named: "Q-C") || displayedCards == UIImage(named: "Q-E") || displayedCards == UIImage(named: "Q-D") || displayedCards == UIImage(named: "Q-T") {
            infoLabel.text = "La persona que está a la derecha de quien sacó la carta toma un trago de su bebida o shot."
            titleLabel.text = "Q: TOMA EL DE LA DERECHA"
        } else if displayedCards == UIImage(named: "K-C") || displayedCards == UIImage(named: "K-E") || displayedCards == UIImage(named: "K-D") || displayedCards == UIImage(named: "K-T") {
            infoLabel.text = "Quien sacó la carta toma un trago de su bebida o un shot."
            titleLabel.text = "TOMAS TÚ"
        }
    }
    
    @IBAction func dismissButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let PViewBound = self.presentingViewController?.view.bounds
        view.frame = CGRect(x: 0, y: 0, width: 360, height: 600)
        view.center = CGPoint(x: PViewBound!.midX, y: PViewBound!.midY)
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = true
    }
    
}
