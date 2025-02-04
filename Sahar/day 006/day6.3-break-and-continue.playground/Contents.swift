import Cocoa

// swift gives us 2 ways to skip one or more items in a loop:
// MARK: 1- continue - skips the remaining items
// let's say in a regular array that is looping, we take each item and do something with it, then we're done and we move to the next one. we do it with item 1, item 2, but item 3 doesn't match what we want, but we tell the loop to continue looping.
//  when we say "continue" swift is gonna stop running the whole rest of the current loop iteration. it'll ignore the rest of it and go to the next index!

// MARK: 2- break - exits the loop
// with break, it exits the entire loop when reached.




// --> Continue Ex: i wanna have an array of file names and we're looking for the code files only

let fileNames = ["code1.swift", "me.jpg", "work.txt", "code2.swift" , "design.psd"]
var onlyCodes = [String]()

for file in fileNames{
    if file.hasSuffix(".swift") == false{
        print("\(file) isn't a code file. Skipping...")
        continue
    }
    
    print ("found the code file: \(file)")
    onlyCodes.append(file)
}

print("all code files are \(onlyCodes)")


//TODO: i'm confused, this is the same as having an if/else in your loop:
/*
let fileNames = ["code1.swift", "me.jpg", "work.txt", "code2.swift" , "design.psd"]
var onlyCodes = [String]()

for file in fileNames{
    if file.hasSuffix(".swift") == false{
        print("\(file) isn't a code file. Skipping...")
//        continue
    }else{
        print ("found the code file: \(file)")
        onlyCodes.append(file)
    }
}
print("all code files are \(onlyCodes)")
*/




// --> Ex: break example
// we wanna see what numbers are multiples of 4 and 14
// we want only 10 numbers that are multiples of both, not more

let num1 = 4
let num2 = 14
var multips = [Int]()

for i in 1...100_000{
    if i.isMultiple(of:num1) && i.isMultiple(of:num2){
        multips.append(i)
        
        if multips.count == 10{
            break
        }
    }
}
print(multips)



