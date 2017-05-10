import Foundation
var inputToProcess : Int = 0
var angle = [0,0,0]
var output : Int
// Loop until valid input is received
while angle[0] == 0 {
    
    // Show the prompt
    print("Angle 1? ", terminator: "")
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = input {
        
        if let inputint = Int(notNilInput){
            if inputint >= 1 && inputint <= 178{
                angle[0] = inputint
            }
        }
        
    }
    
}
while angle[1] == 0 {
    
    // Show the prompt
    print("Angle 2? ", terminator: "")
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = input {
        
        if let inputint = Int(notNilInput){
            if inputint >= 1 && inputint <= 178{
                angle[1] = inputint
            }
        }
        
    }
    
}
while angle[2] == 0 {
    
    // Show the prompt
    print("Angle 3? ", terminator: "")
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = input {
        
        if let inputint = Int(notNilInput){
            if inputint >= 1 && inputint <= 178{
                angle[2] = inputint
            }
        }
        
    }
    
}

if angle[0] + angle[1] + angle[2] == 180{
    //equilateral
    if angle[0] == angle[1] && angle[0] == angle[2] && angle[1] == angle[2]{
        output = 0
        
        
    }//isosceles
    else if angle[0] == angle[1] || angle[0] == angle[2] || angle[1] == angle[2]{
        output = 1
    }else{
        //scalene
        output = 2
    }
}else {
    output = 4
}

if output == 0{
    print("equilateral")
}else if output == 1{
    print("isosceles")
}else if output == 2{
    print("scalene")
}else{
    print("error")
}
