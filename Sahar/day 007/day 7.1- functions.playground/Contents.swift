import Cocoa

// reusing code with functions



// ---> Example of function:
// () after the name are used for functions
// they're used for passing in data
func showWelcome(){
    print("line one of welcome")
    print("line two of welcome")
    print(":")
    print("line three of welcome")
    print("line four of welcome")
}

//how you would call a function:
showWelcome()



// another example:
//what's in the () is our parameter. When calling, you need to always pass in a value for number.
func printTimesTables(number: Int){
    for i in 1...12{
        print("\(i) * \(number) = \(i * number)")
    }
}

printTimesTables(number: 5)
//In java we will write "printTimesTables(5)"




// another example, we let the argument determine how far the times table goes:
func printTimesTables2(number: Int, end:Int){ //number and end are Parameters aka Placeholder.
    for i in 1...end{
        print("\(i) * \(number) = \(i * number)")
    }
}

printTimesTables2(number: 2, end:20) // number:2 and end:20 are arguments aka actual value.
//In java we will write "printTimesTables(2,20)"


// NOTE: The order you pass in arguments should be the exact same as the defined parameters when the function was created.
// this will NOT work:
//printTimesTables2( end:20, number: 2)

// NOTE: Any variable you create inside a function, will be destroyed once the function is done doing its thing


