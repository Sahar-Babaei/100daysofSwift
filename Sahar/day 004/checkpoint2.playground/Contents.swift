import Cocoa

// checkpoint 2
//create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array

var myArray = ["apple" , "banana","orange", "orange" , "kiwi" , "pineapple" , "apple", "orange"]
var numberOfItems:Int = myArray.count
print("there are \(numberOfItems) items in the array")
print (myArray[1])

//for index in myArray {
//    
//    if myArray[numberOfItems-1] == myArray[numberOfItems]{
//
//    }
//    print(myArray[numberOfItems-1])
//    print (numberOfItems)
//}

print(myArray)

var repeatCount = 0

for i in 0..<numberOfItems{ // (this goes from 0-5)
    for j in (i+1)..<numberOfItems{ //i+1 because i is initially zero, but we don't need to check against ourself. (this goes from 1-6)
        if myArray[i]==myArray[j]{
            print("the item number \(i+1) in the array which is \(myArray[i]) is the same as the item number \(j+1) in the array which is \(myArray[j])")
            repeatCount = repeatCount+1
            break
            //TODO: Mentor? why did i get 4 without this "break"?
        }
       //print("checked \(i) with \(j)")
    }
}

print("there is \(repeatCount) repeats")


var NoRepeatSet = Set<String>(myArray)
print(NoRepeatSet)

var numberOfUniqueItems = NoRepeatSet.count
print ("there are a total of \(numberOfItems) items, and \(numberOfUniqueItems) unique items! ( \(repeatCount) repeats)")
