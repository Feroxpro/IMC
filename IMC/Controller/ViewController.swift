//
//  ViewController.swift
//  IMC
//
//  Created by Felipe Domingos on 25/09/22.
//

import UIKit


class ViewController: UIViewController {


    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonResult(_ sender: Any) {
        guard let resultadoDoPeso = weightTextField?.text, let peso = Double(resultadoDoPeso) else { return }
        guard let resultadoDaAltura = heightTextField?.text, let altura = Double(resultadoDaAltura) else { return }
        
        let calculation = Calculation(peso: peso, altura: altura)

        let n = calculation.peso/(calculation.altura*calculation.altura)

        switch n
        {
        case n where n < 10:
            resultLabel.text = "Desnutricão grau V"
            resultLabel.textColor = UIColor.red
        case n where n >= 10 && n <= 12.9:
            resultLabel.text = "Desnutricão grau IV"
            resultLabel.textColor = UIColor.red
        case n where n >= 13 && n <= 15.9:
            resultLabel.text = "Desnutricão grau III"
            resultLabel.textColor = UIColor.red
        case n where n >= 16 && n <= 16.9:
            resultLabel.text = "Desnutricão grau II"
            resultLabel.textColor = UIColor.red
        case n where n >= 17 && n <= 18.4:
            resultLabel.text = "Desnutricão grau I"
            resultLabel.textColor = UIColor.red
        case n where n >= 18.5 && n <= 24.9:
            resultLabel.text = "Normal"
            resultLabel.textColor = UIColor.green
        case n where n >= 25 && n <= 29.9:
            resultLabel.text = "Pré-Obesidade"
            resultLabel.textColor = UIColor.red
        case n where n >= 30 && n <= 34.5:
            resultLabel.text = "Obesidade Grau I"
            resultLabel.textColor = UIColor.red
        case n where n >= 35 && n <= 39.9:
            resultLabel.text = "Obesidade Grau II"
            resultLabel.textColor = UIColor.red
        case n where n > 40:
            resultLabel.text = "Obesidade Grau III"
            resultLabel.textColor = UIColor.red
          default: break
            }
        }
    }
