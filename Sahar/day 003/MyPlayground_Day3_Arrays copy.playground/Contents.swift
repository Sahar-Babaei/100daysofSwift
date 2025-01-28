import Cocoa

//---> dictionairies

//arrays were great at sorting data in a particular order. especially in the order you created it and storing duplicate items.
//but reading items based on their index can be problematic. and sometimes dangerous
var employeeInfo = ["taylor swift" , "singer" , "nyc"]
print ("name: \(employeeInfo[0])")
print ("job title: \(employeeInfo[1])")
print ("location: \(employeeInfo[2])")
//problem with this is that employeeInfo is a variable! there is no guarantee that indexes [0] or [1] or [2] would always exist or remain the same!
// if we wrote:
 employeeInfo.remove(at:1)
// it will mess up the rest
print ("name: \(employeeInfo[0])")
print ("job title: \(employeeInfo[1])")
//job title becomes nyc!
//and trying to reach index [2] will make the code crash because  [2] doesn't exist!


//--> dictionaires don't have indexes! they let us decide how we store our data, how to look for it and where it is
//let employee2 = ["name":"taylor swift", "job":"singer", "location":"nyc"]
//wrote it in multipe lines so it's easier to understand
let employee2 = [
    "name":"taylor swift",
    "job":"singer",
    "location":"nyc"
]
//the strings on the left of the ":" are the keys to the dictionary, and the values on the right of ":" are the values of the dictionary.
// to access these values, we use the keys we used to make them
print(employee2["name"])
print(employee2["job"])
print(employee2["location"])
//now you get warning errors for these and the output says "optional("taylor swift") ^^ why?
//let's say i wrote
print(employee2["password"])
// passwrord as a key doesn't exist in this dictionary. With arrays, trying to get an index that doesn't exist would make the code crash. Dictionaries don't do this but there has to be some sort of safety measure.  with dictionaries, it tells us "you might get a value back, but you might get back nothing at all!" and so swift calls these "optionals".
//basically it's saying: "this data might not actually be there, are you sure you want to print it out?
// for this, we provide a default value to use if the key doens't exist.
// here i say: "read the name, if you can't send back a value of "unknown" "
print(employee2["name", default:"Unknown"])
print(employee2["password", default: "this value doesn't exist"])
print(employee2["job", default: "this value doesn't exist"])
print(employee2["location" , default: "this value doesn't exist"])
//with this solution. we always get a string back.


//--> let's use other data like booleans or intergers
let hasGraduated = ["eric": false, "emma": false , "nick":true, "firm": true, "jake": false]
let olympics = [2012:"london" , 2016:"rio" , 2021:"tokyo"]

print(olympics[2012, default:"not held"])
print(olympics[2011, default:"not held"])

//--> you can create emplty dictionaires, using an explicit type you want to store, then set keys one by one. this is how you declare a dictionary
var heights = [String:Int]()
heights["yao Ming"] = 229
heights["shervin"] = 169
heights["sahar"] = 170

//because each item is located at it's specefic key, dictionaies don't allow duplicate keys to exist. so if you do duplicates, it overrides the previous value with the new one.
var villiansOf = [String:String]()
villiansOf ["batman"] = "joker"
villiansOf ["harrypotter"] = "voldemort"
villiansOf ["superman"] = "lex luthor"

print(villiansOf["batman", default: "not found"])

villiansOf ["batman"] = "pingu"
print(villiansOf["batman", default: "not found"])
//now the key batman points to "pingu" because it's been overriden

//just like arrays you can use .count and .removeall
var counting = villiansOf.count
print(counting)

villiansOf.removeAll()
print(villiansOf.count)






