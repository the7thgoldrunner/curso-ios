//
//  POSViewController.swift
//  TPV
//
//  Created by Dinesh Harjani on 03/03/2018.
//  Copyright © 2018 Dinesh Harjani. All rights reserved.
//

import UIKit

class POSViewController: UIViewController {
    
    @IBOutlet var orderLabels: [UILabel]!
    
    var hamburguesas = 0 {
        didSet {
            orderLabels[0].text = "Hamburguesas: \(hamburguesas)"
        }
    }
    
    var papasFritas = 0 {
        didSet {
            orderLabels[1].text = "Papas Fritas: \(papasFritas)"
        }
    }
    
    var helados = 0 {
        didSet {
            orderLabels[2].text = "Helados: \(helados)"
        }
    }
    
    var numberOfItemsInOrder: Int {
        get {
            return hamburguesas + papasFritas + helados
        }
        set {
            hamburguesas = 0
            papasFritas = 0
            helados = 0
        }
    }
    
    @IBAction func buttonWasTapped(_ sender: UIButton) {
        hamburguesas += 1
    }
    
    @IBAction func papasFritasWasTapped(_ sender: UIButton) {
        papasFritas += 1
    }
    
    @IBAction func heladosWasTapped(_ sender: UIButton) {
        helados += 1
    }
    
    @IBAction func newOrderWasTapped(_ sender: UIButton) {
        numberOfItemsInOrder = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
