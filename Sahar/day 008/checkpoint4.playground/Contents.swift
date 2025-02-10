import Cocoa

// coding challenge - checkpoint 4
/*
 write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number
 
 1- You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
 
 2- If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
 
 3- You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
 
 4- If you can’t find the square root, throw a “no root” error.
 */



// MARK: -----> my half-completed attempt:

/*
enum ErrorTypes : Error{
    case outOfBounds
    case noRoot
}

func checkpoint4 (input: Int ) throws -> Int{
    
    if input <= 1 || input >= 10_000{
        throw ErrorTypes.outOfBounds
    }
    
    else{
        for i in 1...10_000{
            if input == (i*i){
                var sqrRoot = i
                return sqrRoot
            }
            else{
                throw ErrorTypes.noRoot
            }
        }
    }
    
}
 */



// MARK: - solved:

enum ErrorTypes : Error{
    case outOfBounds
    case noRoot
}

func checkpoint4 (_ input: Int ) throws -> Int{
    
    if input < 1 || input > 10_000{
        throw ErrorTypes.outOfBounds
    }
    

    //TODO: mentor?? it feels odd to not have this in an else statement!
    for i in 1...10_000{
        if i*i == input{
            return i
        }
    }
    throw ErrorTypes.noRoot
}




let myInput = 6

do {
    let result = try checkpoint4(myInput)
    print ("square root of \(myInput) is \(result)")
}
catch ErrorTypes.noRoot{
    print("error: your input of \(myInput) has no square root")
}
catch ErrorTypes.outOfBounds{
    print("error:your input of \(myInput) is either bigger than 10000 or smaller than 1")
}
catch{
    print("there was some unknown error")
}
