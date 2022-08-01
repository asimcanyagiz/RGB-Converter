//
//  ViewController.swift
//  RGB-Converter
//
//  Created by Asım can Yağız on 31.07.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var redText: UITextField!
    @IBOutlet weak var greenText: UITextField!
    @IBOutlet weak var blueText: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var btnConvert: UIButton!
    
    
    @IBOutlet weak var lblSelectedColor: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
    }
    
    @IBAction func btnConvertClicked(_ sender: UIButton) {
    }
    
    
    
}

