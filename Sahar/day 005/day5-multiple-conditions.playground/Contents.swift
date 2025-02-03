import Cocoa

// if statement need conditions. if you want multiple conditions:

let age = 14

//-> instead of this:
if age >= 18{
   print( "you can vote")
}
if age < 18 {
    print( "you can NOT vote")
}

//-> we use else (duh)
if age >= 18{
   print( "you can vote")
}else{
    print( "you can NOT vote")
}


// --> you can also have two conditions in one statement by either doing nesting or && as a logical operator. with && both conditions need to be true. there is also || for "or" where only one condition can be right for it to work.
let temp = 25

//option1 :
if temp < 20 {
    if temp > 8 {
        print("i love this weather")
    }
}
//option2:
if temp < 20 && temp > 8{
    print("yay my fav weather")
}

// or example ||
var userAge = 14
var hasPermission = true
if userAge >= 18 || hasPermission == true { //you can remove "== true" here
    print("you can buy this game")
} else{
    print("you can't buy this game")
}


// --> About else if: when first if is false, but second if ("else if") is true.
// and you can have multiple else ifs. and put an "else" at the end to catch all other results.

//example:
enum transportOpts{
    case airplane, hellicopter, car, bike, scooter
}
let transport = transportOpts.bike //because i chose bike, and we used one if and rest is else if, the last else if which has a bike didn't get executed.

if transport == .airplane || transport == .hellicopter || transport == .bike {
    print("we're gonna fly!")
}
else if transport == .bike {
    print("we bike")
}
else if transport == .car {
    print("we drive")
}
else if transport == .bike || transport == .scooter {
    print("it's a workout")
}

//when using one if and then else if(s) you make sure one condition is checked at a time and only the first matching condition is executed and the rest of them are not (even if true)
//MARK: With else if, only the first true condition is executed, With if, every if statement is checked independently.
