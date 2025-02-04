import Cocoa

//checkpoint 3 - fizz buzz
/*
 The problem is called fizz buzz,  Your goal is to loop from 1 through 100, and for each number:
 - If it’s a multiple of 3, print “Fizz”
 - If it’s a multiple of 5, print “Buzz”
 - If it’s a multiple of 3 and 5, print “FizzBuzz”
 - Otherwise, just print the number.
 */

//MARK: - method 1: (based on new learnings)

for i in 1...100{
    if i.isMultiple(of:3) && !i.isMultiple(of:5){
        print ("\(i) is multiple of 3 --> Fizz")
        continue
    }
    if i.isMultiple(of:5) && !i.isMultiple(of:3){
        print ("\(i) is multiple of 5 --> Buzz")
        continue
    }
    
    if i.isMultiple(of:3) && i.isMultiple(of:5){
        print ("\(i) is multiple of both --> Fizz-Buzz")
        continue
    }
    
    else {
        print(i)
    }
}

//MARK: - method 2 (how i'd normally do it)
/*
for i in 1...100{
    if i.isMultiple(of:3) && i.isMultiple(of:5){
        print ("\(i) is multiple of both ----> Fizzbuzz")
        
    }
    else if i.isMultiple(of:5) {
        print ("\(i) is multiple of 5 --> Buzz")
        
    }
    
    else if i.isMultiple(of:3){
        print ("\(i) is multiple of 3 --> Fizz")
        
    }
    
    else {
        print(i)
    }
        
}
*/
