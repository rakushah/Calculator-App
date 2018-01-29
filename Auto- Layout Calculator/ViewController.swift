//
//  ViewController.swift
//  Auto- Layout Calculator
//
//  Created by Shah, Raj Kumar-CW on 1/29/18.
//  Copyright © 2018 Shah, Raj Kumar-CW. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    //divide = 10
    //multiply = 11
    //add = 12
    //subtract =13
    //equal=14
    //decimal = 15
    //percentage= 16 to be implemented
    // plus or minus =17 to be implemented
    // clear = 18
    
    var firstInput : String = ""
    var previousSelectedQuery : String = "equal"
    var startNumber : Bool = true
    
    var logic = Logic()
    @IBOutlet weak var inputTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.tag == 0{
            numberEntred(inputValue: "0")
        } else if sender.tag == 1{
            numberEntred(inputValue: "1")
        } else if sender.tag == 2{
            numberEntred(inputValue: "2")
        }else if sender.tag == 3{
            numberEntred(inputValue: "3")
        }else if sender.tag == 4{
            numberEntred(inputValue: "4")
        }else if sender.tag == 5{
            numberEntred(inputValue: "5")
        }else if sender.tag == 6{
            numberEntred(inputValue: "6")
        }else if sender.tag == 7{
            numberEntred(inputValue: "7")
        }else if sender.tag == 8{
           numberEntred(inputValue: "8")
        }else if sender.tag == 9{
            numberEntred(inputValue: "9")
        }else if sender.tag == 15{
            firstInput = inputTextField.text!
            if !firstInput.contains(".") {
                inputTextField.text = firstInput + "."
            }
        }
        
        
        else if sender.tag == 10{
            computeQuery(queryType: "div")
        }else if sender.tag == 11{
             computeQuery(queryType: "mul")
        }else if sender.tag == 12{
             computeQuery(queryType: "add")
        }else if sender.tag == 13{
             computeQuery(queryType: "sub")
        }else if sender.tag == 14{
            computeQuery(queryType: "equal")
        }else if sender.tag == 16{
            previousSelectedQuery = "percent"
        }else if sender.tag == 17{
            previousSelectedQuery = "plusAndMinus"
        }else if sender.tag == 18{
            resetCalulator()
        }
    }
    
    func numberEntred(inputValue : String){
        firstInput = inputTextField.text!
        if startNumber {
            inputTextField.text = inputValue
            startNumber = false
        }else{
            inputTextField.text = firstInput + inputValue
        }
    }
    
    func computeQuery(queryType: String){
        startNumber = true
        firstInput = inputTextField.text!
        if previousSelectedQuery == "equal"{
            logic.setTotal(number: firstInput)
        }else if previousSelectedQuery == "add"{
            logic.add(num: firstInput)
        }else if previousSelectedQuery == "sub"{
            logic.subtract(num: firstInput)
        }else if previousSelectedQuery == "mul"{
            logic.multiply(num: firstInput)
        }else if previousSelectedQuery == "div"{
            logic.divide(num: firstInput)
        }
        
        inputTextField.text = logic.getTotalString()
        previousSelectedQuery = queryType
        
    }

    
    func resetCalulator() {
        startNumber = true
        inputTextField.text = "0"
        previousSelectedQuery = "equal"
        logic.setTotal(number: "0")
    }
    


}

