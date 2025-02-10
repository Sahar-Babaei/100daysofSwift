import Cocoa

// naming parameters is very important because it distinguishes differet functions
// these are all different functions:
/*
 func hireEmployee (name:String) {}
 func hireEmployee (title:String) {}
 func hireEmployee (location:String) {}
 */


//when we define parameters for a function. we can have two names!
// 1- one will be used to call outside
// 2- one to use inside the function body
//ex:
let lyric = "I see la la la i'm the best"
print(lyric.hasPrefix("I see")) // <---- this function doesn't have an external name so i can just write "i see" in parameter instead of (prefix:"i see")


// --> making my own
func isUpperCase (someString: String) -> Bool{
    return someString == someString.uppercased( )
}
let myString = "HELLO WORLD"
let result = isUpperCase(someString: myString)
print(result)


//MARK: - Point 1: using _

//now by adding a "_" at the start of the parameter bracket, i remove the external parameter name
func isUpperCase1 (_ someString: String) -> Bool{ //<---- use (_) here
    return someString == someString.uppercased( )
}
let myString1 = "HELLO WORLD"
let result1 = isUpperCase1(myString1) // <--- no need to write the parameter name now
print(result1)



//MARK: - Point 2: external and internal parameter names

// another ex: let's say i'd rather have my function read as "printTimesTable(for:5)" when called but in the function's body, "for" is not allowed because it is the keyword for "for loops".
// you write (for number : Int) and the "for" will be used externally for calling the function, but the "number" will be used internally for the body of the function

func printTimesTable (for number:Int){ // <-- write external parameter name at start, then internal parameter name
    for i in 1...12{
        print("\(number) x \(i) is \(number*i)")  // <-- use internal parameter name
    }
}
printTimesTable(for:5) //<-- use external parameter name
