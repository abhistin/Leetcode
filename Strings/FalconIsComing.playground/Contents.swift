import Foundation
class Solution {
    static func capatilizeFirst(_ string: String) -> String {
        var resultString = ""
        var charArray: [Character] = Array(string)
        var capatilizeNext = true
        
        for char in charArray {
            if capatilizeNext {
                resultString.append(char.uppercased())
                capatilizeNext = !capatilizeNext
            } else {
                resultString.append(char)
            }
            
            if char == " " {
                capatilizeNext = !capatilizeNext
            }
        }
        return resultString
    }
}

let string = "falcon is coming."
let result = Solution.capatilizeFirst(string)
print(string)
print(result)







class Parent {
    static func staticMethod() {
        print("This is a static method.")
    }
    
    class func classMethod() {
        print("This is a class method.")
    }
}

class Child: Parent {
    // This will cause an error: cannot override static method
     override static func staticMethod() { }
    
    override class func classMethod() {
        print("This is an overridden class method.")
    }
}

Parent.staticMethod()  // Output: This is a static method.
Parent.classMethod()   // Output: This is a class method.

Child.staticMethod()   
Child.classMethod()    // Output: This is an overridden class method.
