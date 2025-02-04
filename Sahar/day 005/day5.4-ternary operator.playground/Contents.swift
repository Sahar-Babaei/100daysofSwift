import Cocoa

// ternary conditional operator
// in "2+5" (+) is a binary operator. binary has 2 inputs



// a ternary operator has 3 parts:
// part one is : age >= 18 which is the condition to check. "if age is bigger or equal to 18"
// part two: "yes" which is something to send back if the condition is true
// part three: "no" which is something to send back if the condition is false

// to remember think of : WTF
// part 1 : (W)hat you're checking
// part 2: what to do if (T)rue
// part 3: what to do if (F)alse

let age = 18
let canVote = age >= 18 ? "yes" : "No"
print (canVote)

// ^ this is like a condensed version of an if/else statement:
/*
if age >= 18{
    print("yes")
} else {
    print ("no")
}
*/


//another example:
let hour = 23
print( hour < 12 ? "it's before noon" : "it's afternoon")


//another example:
let name = ["jane" , "kelly" , "max"]
let peopleCount = name.isEmpty ? "no one in list" : "\(name.count) people in list"
print (peopleCount)



//harder example:
enum Theme {
    case light, dark
}
let theme = Theme.dark
let background = (theme == .dark) ? "use dark background" : "use light backgound"
print (background)


// still wondering what the point of ternary is?
// sometimes with swiftUI this is the only way!
