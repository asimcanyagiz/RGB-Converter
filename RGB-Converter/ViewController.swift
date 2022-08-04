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
        
//        if secilenIndex == 0 {
//            btnConvert.setTitle("HEX convert", for: UIControl.State.normal)
//        } else {
//            btnConvert.setTitle("RGB convert", for: UIControl.State.normal)
//        }
        
    }
    
    @IBAction func btnConvertClicked(_ sender: UIButton) {
        
        
        if secilenIndex == 0 {
            //RGB TO HEX
            convertToHex()
            
        } else {
            //HEX TO RGB
            convertToRgb()
        }
    }
    
    func convertToHex() {
        
        guard let redValue = UInt8(redText.text!) else {return}
        guard let greenValue = UInt8(greenText.text!) else {return}
        guard let blueValue = UInt8(blueText.text!) else {return}
        
        lblResult.text = "RGB (\(redValue), \(greenValue), \(blueValue))"
        lblSelectedColor.backgroundColor = UIColor(red: CGFloat(redValue)/255, green: CGFloat(greenValue)/255, blue: CGFloat(blueValue)/255, alpha: 1)
        
//        if let redValue = UInt8(redText.text!){
//
//            if let greenValue = UInt8(greenText.text!) {
//
//                if let blueValue = UInt8(blueText.text!){
//                    //User's values are correct
//
//                    let redHex = String(format: "%2X", redValue)
//                    let greenHex = String(format: "%2X", greenValue)
//                    let blueHex = String(format: "%2X", blueValue)
//
//                    lblResult.text = "#\(redHex)\(greenHex)\(blueHex)"
//                    lblSelectedColor.backgroundColor = UIColor(red: CGFloat(redValue)/255, green: CGFloat(greenValue)/255, blue: CGFloat(blueValue)/255, alpha: 1)
//                }
//            }
//        }
        
    }
    
    func convertToRgb() {
        
        guard let redValue = UInt8(redText.text!, radix: 16) else {return}
        guard let greenValue = UInt8(greenText.text!, radix: 16) else {return}
        guard let blueValue = UInt8(blueText.text!, radix: 16) else {return}
        
        lblResult.text = "RGB (\(redValue), \(greenValue), \(blueValue))"
        lblSelectedColor.backgroundColor = UIColor(red: CGFloat(redValue)/255, green: CGFloat(greenValue)/255, blue: CGFloat(blueValue)/255, alpha: 1)
        
//        if let redValue = UInt8(redText.text!, radix: 16) {
//
//            if let greenValue = UInt8(greenText.text!, radix: 16){
//
//                if let blueValue = UInt8(redText.text!, radix: 16){
//
//
//                    lblResult.text = "RGB (\(redValue), \(greenValue), \(blueValue))"
//                    lblSelectedColor.backgroundColor = UIColor(red: CGFloat(redValue)/255, green: CGFloat(greenValue)/255, blue: CGFloat(blueValue)/255, alpha: 1)
//                }
//            }
//        }
        
    }
    
    
    
}

