//: Playground - noun: a place where people can play

import UIKit

class MyClass {
    
    var nameInMyClass: String = "Doramon"
    let pi: Double = 3.1416
    
//    Function Void Type
    
    func myFuncVoidType() -> Void {
        nameInMyClass = nameInMyClass + "-InJapan"
    }
    
    func myFuncVoidTypeAddParameters(newName: String) -> Void {
        nameInMyClass = newName
    }
    
//  Function Return Type
    func myFuncReturnType() -> Double {
        return pi
    }
    
    func myFuncReturnTypeAddParameter(baseDouble: Double, heightDouble: Double, unitString: String) -> String {
        let areaDouble = 0.5 * baseDouble * heightDouble
        let resultString: String = String(areaDouble) + " " + unitString
        return resultString
    }
    
    
    
} // MyClass

// Over MyClass
var myClass = MyClass()                                                     // Inheriate Class

func myPrint(message: String) -> Void {
    print("Result \(message) ==> \(myClass.nameInMyClass)")
}


//print("nameInMyClass before ==> \(myClass.nameInMyClass)")
myPrint(message: "Before Change")
myClass.nameInMyClass = "Nobita"
//print("nameInMyClass after ==> \(myClass.nameInMyClass)")
myPrint(message: "After Change")

//Call Funtion Void Type
myClass.myFuncVoidType()
print("nameInMyClass after call function ==> \(myClass.nameInMyClass)")

myClass.myFuncVoidTypeAddParameters(newName: "Kubo")
print("nameInMyClass after call function ==> \(myClass.nameInMyClass)")


//Call Function Return Type
var radiusDouble: Double = 20

var areaDouble = myClass.myFuncReturnType() * radiusDouble * radiusDouble
print("Area ==> \(areaDouble)")

var requestArea = myClass.myFuncReturnTypeAddParameter(baseDouble: 100, heightDouble: 50, unitString: "sq.meter")
print("Area ==> \(requestArea)")










