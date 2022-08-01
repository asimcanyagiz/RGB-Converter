//
//  ViewController.swift
//  RGB-Converter
//
//  Created by Asım can Yağız on 31.07.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var segmentedText: UISegmentedControl!
    @IBOutlet weak var redText: UITextField!
    @IBOutlet weak var greenText: UITextField!
    @IBOutlet weak var blueText: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var btnConvert: UIButton!
    
    @IBOutlet weak var lblSelectedColor: UILabel!
    var secilenIndex : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        segmentedText.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
    }

    
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        
        secilenIndex = sender.selectedSegmentIndex
        
        lblResult.text?.removeAll()
        
        redText.text?.removeAll()
        greenText.text?.removeAll()
        blueText.text?.removeAll()
        
        lblSelectedColor.backgroundColor = UIColor.systemGray3
        segmentedText.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        
        if secilenIndex == 0 {
            btnConvert.setTitle("HEX convert", for: UIControl.State.normal)
        } else {
            btnConvert.setTitle("RGB convert", for: UIControl.State.normal)
        }
        
    }
    
    @IBAction func btnConvertClicked(_ sender: UIButton) {
    }
    
    
    
}

