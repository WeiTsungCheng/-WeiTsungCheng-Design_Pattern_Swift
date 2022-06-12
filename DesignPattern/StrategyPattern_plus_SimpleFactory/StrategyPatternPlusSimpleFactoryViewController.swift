//
//  StrategyPatternPlusSimpleFactoryViewController.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/5.
//


import UIKit

class StrategyPatternPlusSimpleFactoryViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var priceTXF: UITextField!
    
    @IBOutlet var quantityTXF: UITextField!
    
    @IBOutlet var caculateWayTXF: UITextField!
    
    @IBOutlet var resultTXV: UITextView!
    
    @IBAction func caculateWay(_ sender: UIButton) {
        
        let context = CashContextNew(type: caculateWayTXF.text!)
        
        let price: Double = Double(priceTXF.text ?? "0") ?? 0
        let quantity: Double = Double(quantityTXF.text ?? "0") ?? 0

        let acceptCash = context.getResult(money: price * quantity)

        resultTXV.text = String(acceptCash ?? 0)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        priceTXF.delegate = self
        quantityTXF.delegate = self
        caculateWayTXF.delegate = self
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
          textField.resignFirstResponder()
          return true
      }
}
