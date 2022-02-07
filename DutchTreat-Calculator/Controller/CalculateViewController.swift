//
//  ViewController.swift
//  DutchTreat-Calculator
//
//  Created by Willy Sato on 2022/01/28.
//

import UIKit

var billTotal = 0
var numberOfPeople = 2
var finalResult = "0"

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        endEditing()
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = Int(sender.value).description
        numberOfPeople = Int(sender.value)
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let bill = billTextField.text!
        if bill != "" {
            billTotal = Int(bill)! / numberOfPeople
            finalResult = String(billTotal)
        }
        
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.total = finalResult
        }
    }
    
    func endEditing() {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(finish))
        toolBar.setItems([doneButton], animated: true)
        toolBar.isUserInteractionEnabled = true
        billTextField.inputAccessoryView = toolBar
    }
    
    @objc func finish() {
        view.endEditing(true)
    }
    
}

