import Foundation
var inputToProcess : Int = 0
var angle = [0,0,0]
var output : Int

for i in 0...2 {
    // Loop until valid input is received
    while angle[i] == 0 {
        
        // Show the prompt
        print("Angle \(i+1)? ", terminator: "")
        
        // Get the user's input
        var input : String?
        input = readLine()
        
        // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
        if let notNilInput = input {
            if let inputint = Int(notNilInput){
                // input range from 1-178 inclusive
                if inputint >= 1 && inputint <= 178{
                    angle[i] = inputint
                }
            }
            
        }
        
    }
//    // Loop until valid input is received for angle 2

}
//if all angles add up to 180 proceed with determining the type of triangle
if angle[0] + angle[1] + angle[2] == 180{
    
    if angle[0] == 100 || angle[1] == 100 || angle[2] == 100{ //Easter egg
        print("💯")
    }
    //equilateral
    if angle[0] == angle[1] && angle[0] == angle[2] && angle[1] == angle[2]{
        output = 0
        
        //Isosceles
    }else if angle[0] == angle[1] || angle[0] == angle[2] || angle[1] == angle[2]{
        output = 1
    } else {
        //scalene
        output = 2
    }
    //error if not all angles add to 180
} else {
    output = 4
}
// using output to display string after input is given
if output == 0{
    print("equilateral")
}else if output == 1{
    print("isosceles")
}else if output == 2{
    print("scalene")
}else{
    print("error")
}
