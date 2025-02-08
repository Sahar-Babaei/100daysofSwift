import Cocoa

// sqrt() is from Cocoa ^^ which is imported up here


//this function returns something so we can have a constant store the value it returns like this
let root = sqrt(169)
print(root)


// --> Steps for making our own function that returns things
// step 1: write an arrow "->" before function's opening "{" telling it the type of data you're planning to return
// step 2: use the "return" keyword inside the function's body to return the value/data

// ex:
func rollDice() -> Int { // this function sends back and integer
    return Int.random(in:1...6)
    //^^ it will return a random value between 1 and 6 just like a 6sided dice.
}
let result = rollDice()
print(result)


// ex: do two strings containt he same letters, regardless of their order?
// accept 2 strings as parameters
// return true if their letters are the same
// tip: call sorted() on a string to get its letters in alphabetical order
func containSameLetter (string1 : String, string2: String) -> Bool {
    if string1.sorted() == string2.sorted(){
        return true
    }
    else{
        return false
    }
}
print(containSameLetter(string1: "sahar", string2: "sarah"))

//option: second solution

 func containSameLetter2 (string1 : String, string2: String) -> Bool {
     //   return string1.sorted() == string2.sorted()
     
     // note: when a function has one line of code which returns a value.
     // you can remove the "return" keywork like this:
     string1.sorted() == string2.sorted()
     
 }



//ex: a pythagoras function
func pythagoras (a: Double, b: Double) -> Double{
    let input = a*a + b*b
    let root = sqrt(input)
    return root
}
let c = pythagoras(a: 3, b: 4)
print (c)

// if i were to write it as a 1 line return:
func pythagoras2 (a: Double, b: Double) -> Double{
    sqrt(a*a + b*b)
}
print(pythagoras2(a: 3, b: 4))



// Note: if your function doesn't return a value, you can still use the keyword "return" in the body to force the function to exit immediately.
// ex: u wanna check if the input matches what u expected. if it doesn't, you exit immediately.
func sayHello(){
    return
}
