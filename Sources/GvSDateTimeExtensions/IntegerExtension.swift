//
//  File.swift
//  
//
//  Created by Grant van Staden on 2020/02/09.
//

import Foundation

extension Int {
    /// Will left pad the string value of the integer with zero until the specified string length is reached.
    func asLeftPaddedString(ofLength length:Int) -> String {
        let stringValue = self.description
        if stringValue.count >= length {
            return stringValue
        }
        
        let numberOfZeros = length - stringValue.count
        return "\(String(repeating: "0", count: numberOfZeros))\(stringValue)"
    }
}
