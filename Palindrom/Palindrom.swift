//
//  Palindrom.swift
//  Palindrom
//
//  Created by Tejas Thanki on 10/03/21.
//

import Foundation

    func isPalindrom(_str:String)->Bool{
        let str = _str.replacingOccurrences(of: "\\W", with: "", options: .regularExpression, range: nil)
        
        let count = str.count
        if(count > 0){
            return checkPalindrom(str: str, left: 0, right: count - 1)
        }else{
            return false
        }
    }
    
    func checkPalindrom(str:String,left:Int,right:Int) -> Bool{
        if(left >= right){
            return true
        }
        let leftSide = str[str.index(str.startIndex, offsetBy: left)]
        let rightSide = str[str.index(str.startIndex,offsetBy: right)]
        if(leftSide != rightSide){
            return false
        }
        return checkPalindrom(str: str, left: left + 1, right: right - 1)
    }

