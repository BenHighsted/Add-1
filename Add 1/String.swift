//
//  String.swift
//  Add 1
//
//  Created by Ben Highsted on 28/03/20.
//  Copyright © 2020 Ben Highsted. All rights reserved.
//

import Foundation

extension String
{
    //Parameter type Int, Return type String.
    static func randomNumber(length: Int) -> String
    {
        var result = ""
        
        //for loop to run as many times as length
        for _ in 0..<length {
            //generates a random digit then appends it to the result string
            let digit = Int.random(in: 0...9)
            result += "\(digit)"
        }
        
        return result
    }
    
    
    func integer(at n: Int) -> Int
    {
        let index = self.index(self.startIndex, offsetBy: n)

        return self[index].wholeNumberValue ?? 0
    }
}
