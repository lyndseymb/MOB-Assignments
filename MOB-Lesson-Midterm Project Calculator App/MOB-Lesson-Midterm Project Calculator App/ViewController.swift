//
//  ViewController.swift
//  MOB-Lesson-Midterm Project Calculator App
//
//  Created by Lyndsey Boucherle on 10/11/15.
//  Copyright © 2015 Lyndsey Boucherle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var numText:String = ""
    var subTotal:Double = 0
    var saveOperator = "plus"


    @IBOutlet weak var displayNumber: UILabel!
    
    func displayCurrentNumber(Num:Int) {
        numText = numText + String(Num)
        displayNumber.text = numText
    }
    
    func currentOperator() {
        if (saveOperator == "plus") {
            subTotal = subTotal + convertToInt(numText)
        }
       else if (saveOperator == "minus") {
            subTotal = subTotal - convertToInt(numText)
        }
       else if (saveOperator == "divide") {
            subTotal = subTotal / convertToInt(numText)
        }
       else if (saveOperator == "multiply") {
            subTotal = subTotal * convertToInt(numText)
        }


    }
    
    func convertToInt (input:String) -> Double {
        if input == "" {
            return (0)
        }
        else {
        return Double(input)!
        }
    }
    
    
    @IBAction func button7(sender: AnyObject) {
        displayCurrentNumber(7)
        
    }
    
    @IBAction func button8(sender: AnyObject) {
        displayCurrentNumber(8)

    }
    
    @IBAction func button9(sender: AnyObject) {
        displayCurrentNumber(9)
    }
    
    @IBAction func button4(sender: AnyObject) {
        displayCurrentNumber(4)
    }
    
    @IBAction func button5(sender: AnyObject) {
        displayCurrentNumber(5)
    }
    
    @IBAction func button6(sender: AnyObject) {
        displayCurrentNumber(6)
    }
    
    @IBAction func button1(sender: AnyObject) {
        displayCurrentNumber(1)
    }
    
    @IBAction func button2(sender: AnyObject) {
        displayCurrentNumber(2)
    }
    
    @IBAction func button3(sender: AnyObject) {
        displayCurrentNumber(3)
    }
    
    @IBAction func button0(sender: AnyObject) {
        displayCurrentNumber(0)
    }
    
    @IBAction func Divide(sender: AnyObject) {
        currentOperator()
        displayNumber.text = String(subTotal)
        numText = ""
        saveOperator = "divide"
    }
    
    @IBAction func Multiply(sender: AnyObject) {
        currentOperator()
        displayNumber.text = String(subTotal)
        numText = ""
        saveOperator = "multiply"

    }
    
    @IBAction func Subtract(sender: AnyObject) {
        currentOperator()
        displayNumber.text = String(subTotal)
        numText = ""
        saveOperator = "minus"

    }
    
    @IBAction func Plus(sender: AnyObject) {
        currentOperator()
        displayNumber.text = String(subTotal)
        numText = ""
        saveOperator = "plus"
        
    }
    
    @IBAction func Equals(sender: AnyObject) {
        currentOperator()
        displayNumber.text = String(subTotal)
    }

    
    @IBAction func Clear(sender: AnyObject) {
        numText = ""
        subTotal = 0
        saveOperator = "plus"
        
        displayNumber.text = ""
        
    }
    
    @IBAction func decimalClicked(sender: AnyObject) {
        numText = numText + "."
        displayNumber.text = numText
        
    }
}