import Cocoa

for i in 1...100{
    //look for if it is a multiple of both first
    if(i .isMultiple(of: 3) && (i .isMultiple(of: 5))){
        print("FizzBuzz")
    }
    else if (i .isMultiple(of: 5)){
        print("Buzz")
    }
    else if ( i .isMultiple(of: 3)){
        print ("Fizz")
    }
    
    else{ print(i)}
}
