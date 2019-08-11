//
//  ViewController.swift
//  Calculator
//
//  Created by Ben Gohlke on 5/29/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

var brain: CalculatorBrain?

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var outputLabel: UILabel!

	var brain: CalculatorBrain?


    override func viewDidLoad() {
        super.viewDidLoad()

		brain = CalculatorBrain()

		




    }
    
    // MARK: - Action Handlers
    
    @IBAction func operandTapped(_ sender: UIButton) {
		if let uwOperand = sender.titleLabel?.text {
			brain?.addOperandDigit(uwOperand)
		}
    }


    @IBAction func operatorTapped(_ sender: UIButton) {

		}


    @IBAction func equalTapped(_ sender: UIButton) {

		}

    
    @IBAction func clearTapped(_ sender: UIButton) {
		clearTransaction()
		outputLabel.text = "0"
    }
    
    // MARK: - Private
    
    private func clearTransaction() {
		brain = CalculatorBrain()
    }
}
