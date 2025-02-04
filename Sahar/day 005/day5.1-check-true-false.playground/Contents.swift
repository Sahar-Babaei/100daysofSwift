import Cocoa

// if statements let us check a condition

let score = 85

if score>80{
    print("great job your score is great.")
}


let speed = 88
let percent = 85
let age = 18

if speed >= 88{
    print("speedy woe")
}
if percent<85 {
    print("sorry no A for you")
}
if age >= 18{
    print("congrats you're an adult!")
}



let ourName = "Sahar"
let friendName = "Kirsten"
if ourName < friendName{
    print ("\(ourName) comes before \(friendName)")
}
if ourName > friendName{
    print ("\(friendName) comes before \(ourName)")
}

//if adding an item to an array makes it contain more than 3, remove the oldest number
var nums = [1,2,3]
nums.append(4)

if nums.count > 3 {
    nums.remove(at:0)
}
print(nums)


//if user asked to enter a name, and entered nothing, give them a default name
var username = ""
if username == ""{
    username = "anonymous"
}
print("welcome \(username)")

//some other ways:
if username.count == 0 { //you can count number of letters in a string
    username = "no name entered"
}

//better way
if username.isEmpty == true{
    username = "the string entered is empty"
}

//even better:
if username.isEmpty{ //isEmpty is a boolean as it is
    username = "the string entered is empty"
}
