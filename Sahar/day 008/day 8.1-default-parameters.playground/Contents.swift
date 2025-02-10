import Cocoa

// sometimes u want a default value while also leaving the possibility to change that default value if needed


// for example for this function. we usually want our times table to end at 12.

func printTimesTables(for number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTables(for: 5, end: 20)


// MARK: let' give "end" the default value of 12:
func printTimesTables1(for number: Int, end: Int=12) { //<-- how i set a default value
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTables1(for: 5, end: 20)
printTimesTables1(for: 8) //<-- when the second parameter is not mentioned. it goes with default




//ex:
var characters = ["harry", "ron", "severus" ,"luna"]
print(characters.count)
characters.removeAll(keepingCapacity: true) //<-- usually we don't put anything in () because the default is the size of the array. but there is the optional parameter to let the array keep its storage space and not emptying it.
// honestly ^ not very important

print(characters.count)
