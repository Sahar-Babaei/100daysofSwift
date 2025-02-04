import Cocoa

//while loop: give it a condition and it will run it over and over again until the condition becomes false.
// while loops are useful for when you don't know how many times a loop is gonna go around


//let's say we wanna print a countdown
var countdown = 10

while countdown > 0{
    print("\(countdown)...")
    countdown -= 1 //here you're changing countdown, so the next iteration of the while loop will be something different.
}
print("blast off!")



// --> "random(in: )" works for both int and double. you give it a range and it will give you a random int or double within that range.

// ex: i wanna make a new int between 1 and 1000
let id = Int.random(in:1...1000)
let amount = Double.random(in: 0...1)


//now you can use this in a while loop.
//ex: you'll end the loop only when a 20 is rolled.
var roll = 0
while roll != 20{
    roll = Int.random(in:1...20)
    print("i rolled a \(roll)")
}
print("you finally rolled a 20!")



var counter = 2
while counter < 64 {
    print("\(counter) is a power of 2.")
    counter *= 2
    print("counter's value is now \(counter).")
}



// this prints 6 lines because once it checks for the case 5 <= 5 , it is true, it then goes to the body and executes 5+1 = 6 and prints "i'm reading page 6"
var page: Int = 0
while page <= 5 {
    page += 1
    print("I'm reading page \(page).")
}


var pianoLesson = 1
while pianoLesson < 5 {
    print("This is lesson \(pianoLesson)")
    pianoLesson += 1
}


var cats: Int = 0
while cats < 10 {
    cats += 1
    print("I'm getting cat \(cats) ")
    if cats == 4 {
        print("if statement executed. Enough cats!")
        cats = 10
    }else{
        print("if statement not executed.")
    }
}


var number: Int = 10
while number > 0 {
    number -= 2
    if number.isMultiple(of: 2) {
        print("\(number) is an even number.")
    }
}
