import Cocoa

// when we wanna return multiple values from a function


// --> we could use an array. but it's not great.
func getUser() -> [String]{
    return ["John", "Doe"]
}

let user = getUser()
print("name: \(user[0]) \(user[1])")


// --> or we could use a dictionary. but it's messy and confusing.
func getUser2() -> [String: String]{
    return ["name": "John", "surname": "Doe"]
}
let user2 = getUser2()
print("name: \(user2["name", default: "name-unknown"]) \(user2["surname", default: "surname-unknown"])")


// MARK: - Best solution: tuples
//Solution?
// tuples
func getUser3() -> (firstName : String, lastName: String){
    return (firstName : "taylor" , lastName : "swift")
}

let user3 = getUser3()
print("name: \(user3.firstName) \(user3.lastName)")
// TODO: Mentor??? does the "." work for tupples only or can i use it to access any type of parameter from a function. so far i'm only familiar with "." working for objects of a class.


// tuples are not dictionaries where the keys are arbitrary strings. but they have full names like variable!


//MARK: - about tupples (vs dictionaries)
/*
 - with dictionaries, swift can't know ahead of time if dictionary keys are present. so you have to always provide defaults
 - when you use tuples, swift knows it'll be there. no need for defaults
 - you can call the "." thing where you say "user.firstName". this prevents typos because firstName is a value, not a string.
 - dictionaries can contain millions of values. with tuples you define how many items in the tuple and that's it.
 */

// MARK: 3 other differences:

// 1 -> if you're returning a tuple from a function. swift knows the names of the values so you don't have to repeat them when u call return.

func getUser4 () -> (name: String , surName: String){
    ("Sahar","babaei") // <---- like this
}
let user4 = getUser4()
print("name : \(user4.name) \(user4.1)")


// 2 -> sometimes you're given tuples but they don't have names! in that case you read them using index like arrays. starting from 0. (This also works for tuples that have names!)

func getUser5 () -> (String,String){ // <---- like this
    ("sirius","black")
}
let user5 = getUser5()
print("name : \(user5.0) \(user5.1)")// <---- like this


// 3 -> if a function returns a tuple. u can pull out the tuple

func getUser6() -> (firstName : String, lastName: String){
    return (firstName : "harry" , lastName : "potter")
}

//method 1:
let user6 = getUser6()
let u6firstname = user6.firstName //<---- like this
let u6lastname = user6.lastName  //<---- like this
print("name: \(u6firstname) \(u6lastname)")

//method 2:
let (name , surname) = getUser6()  //<---- like this *******
print("name: \(name) \(surname)")

//method 2.5: if u only need one part of the tuple:
let (firstName , _) = getUser6()  //<---- like this you put a _ for the parts you don't wanna get
print("name: \(name) ")
