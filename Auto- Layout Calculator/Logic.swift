//
//  Logic.swift
//  Auto- Layout Calculator
//
//  Created by Shah, Raj Kumar-CW on 1/29/18.
//  Copyright © 2018 Shah, Raj Kumar-CW. All rights reserved.
//

import Foundation

class Logic{
    var currentTotal : Int
    
    init() {
        currentTotal = 0
    }
    
    func getTotalString() -> String {
        return "\(currentTotal)"
    }
    
    func setTotal(number : String){
        currentTotal = Int(number)!
    }
    
    func add(num : String){
        currentTotal += Int(num)!
    }
    
    func subtract(num: String){
        currentTotal -= Int(num)!
    }
    
    func multiply(num : String){
        currentTotal *= Int(num)!
    }
    
    func divide(num : String){
        currentTotal /= Int(num)!
    }
}

