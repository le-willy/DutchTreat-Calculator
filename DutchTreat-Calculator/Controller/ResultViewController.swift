//
//  ResultViewController.swift
//  DutchTreat-Calculator
//
//  Created by Willy Sato on 2022/02/01.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    
    var total = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = total
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}


/*
// MARK: - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destination.
    // Pass the selected object to the new view controller.
}
*/
