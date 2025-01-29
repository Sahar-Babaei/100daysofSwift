import Cocoa

//---> sets are the 3rd method of keeping data
// they're like arrays but they don't remember the order you add things and they don't allow duplicates
//let's make  a set of some actors:
let actors = Set(["tom cruz", "jennifer lopez", "jessica alba" , "tom hanks"])
// this is basically creating an array inside a set.
// this is the standard way of making sets from fixed data.
//Remember:
//1- sets don't allow duplicate values
//2- sets don't remember the exact order you added things

print(actors)
// interesting, the print result doesn't follow the order of the array in the set
// the set doesn't care about the order! everytime you get a new combo
// for adding things, there is no "append" option because there is no order to append at the end of! Intead we Insert items

var singers = Set<String>()
singers.insert("katy perry")
singers.insert ("adele")
singers.insert ("justin bieber")
singers.insert ("pitbull")
//we use insert not append! we're not adding them at the end of the set, because the set's end can be different each time. we're instead putting these into the set.
print(singers)


//so what's the point of sets if they seem like arrays with more limits... why not just use arrays?
// --> sometimes not storing duplicates is important to you! you don't want duplicate singers because each need a unique name!
// --> sets store data in an optimized way (eventho they're not ordered) and it makes a huge difference when you have 1000 movies and want to search if "harry potter" is one of them. with arrays swift has to go from 0-999 to search. but in sets, it's extraordinaryly fast for looking up!

// contains, count and sorted work for sets!


