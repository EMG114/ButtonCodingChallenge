//: Playground - noun: a place where people can play

//Name: Erica Gutierrez
//Coding Language: Swift 4.0

/*
 Assumptions:

 - An empty string or space will return 0
 - Only integers are used/valid
 - Operators were assigned to the interger/expression that followed.
   If -, integer or expression assumed a negative sign. If +, integer/expression assumed a positive sign.
   For calculations, additions was performed after integer sign assumption.
   Ex: + 1  + 2 3. Expression (+1) is positive. Expression ( + 2 3) is positive and as well as each integer. Both had a + sign preceding.
   After assumming their respective signs, calculations are done from left to right.
 */


import UIKit


func calculateExpression(stringExpression:String) -> Int{
    
    let arrayString = Array(stringExpression)
    var nospaceString = arrayString.filter{$0 != " "}
    print(nospaceString)
    
    var newArray:[Int] = []
    
    for i in nospaceString.startIndex..<nospaceString.endIndex {
        
        if nospaceString[i] == "+" || nospaceString[i] == "-" {
            
            let signValueNextNumber: String = String((nospaceString[i]))     +  String((nospaceString[i + 1]))
            print(signValueNextNumber)
            
            newArray.append(Int(String(signValueNextNumber))!)
            
        } else {
            let newValue = Int(String(nospaceString[i]))
            
            if !newArray.contains((newValue!)){
                
                newArray.append(newValue!)
                
            }
            
        }

    }
    
    
   // print((newArray))
    let values = newArray
    let sum = values.reduce(0, +)
   // print(sum)
    return(sum)
    
}

//sample test
calculateExpression(stringExpression: "+ 1 + 2 3")
