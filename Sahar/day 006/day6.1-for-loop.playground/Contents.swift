import Cocoa

//for loops


let platforms:[String] = ["macOS", "iOS", "tvOS", "watchOS"]

//we haven't declared an "os" variable anywhere! it is a "loop variable" made by the loop and is available ONLY INSIDE the curly brackets of the for loop
//this loops over all the items in "platforms" and puts them one by one in "os"

for os in platforms {
    print("swift works great on \(os)")
}
/*
 to break it down:
 swift takes the first item in platforms which is "macOS" and puts it in the os variable
 it then prints the line in the {} which is the loop's body.
 then it takes the next item in platforms which is "iOS" and puts it in the os variable
 it then prints the line in the {}
 .
 .
 .
 then it takes the last item in the platforms which is "watchOS" puts it in the os variable
 it then prints the line in the {}
 */


// --> you can loop through a fixed tange of numbers:
for i in 1...12 {
    print("5 x \(i) = \(5*i)")
}
/*
 Explanation:
 "1...12" is called a range. it means all numbers between 1 and 12, including 1 and 12!
 (Ranges have their own unique datatype!)
 */


// --> You can put loops inside loops. These are called "nested loops"
for i in 1...10 {
    print("this is the \(i) times table")
    for j in 1...10{
        print("   \(j) x \(i) = \(j*i)")
    }
    print() // we do this to print an empty line so the next iteration starts on a new line
}


// --> There is another range option in swift that counts up to, but excluding the last number
// it's written as "1 ..< 8"
for i in 1...5{ // this is pronounced "1 through 5"
    print("i'm counting from 1 through 5:  \(i)")
}
for i in 1 ..< 5 { // this is pronounced "1 up to 5"
    print("i'm counting from 1 up to 5:  \(i)")
}

// --> what's the point of using up to "..<" ?
// it's perfect for arrays because they start with 0 and end with count-1


// --> sometimes you want to run a code for a certain number of times using a range, but you don't actually care about the loop variable! you don't want i, j , os or whatever
// in this situation, you can replace the loop variable with an underscore.
var lyric = "haters gonna"
for _ in 1...5{
    lyric += " hate"
}
print(lyric)

//MARK: idk it seems like it works with "i" too... 
