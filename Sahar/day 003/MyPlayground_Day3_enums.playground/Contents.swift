import Cocoa

//---> enum is short for e-numerations
// it's a set of name values that we can name and create.
// their main goal is to solve the following problem:
// let's say you wanna write some code that lets user select a day of the week like this:
var selected = "monday"
selected = "tuesday"
selected = "january"
// ^^ here we added a month accidentally instead of a day! the code is okay since it's a string but it's a mistke for the purpose we were looking for.
selected = "friday   "
// ^^ here we entered the right day but we accidentally put unncecesaary space after it by accident! so this is different from "friday" without any space and we will likely have a hard time searching for or finding it if we search fro "friday"
// when working with string you gotta be super careful and it's not efficient. this is where enums come in

//--> you can define a whole type with a set of values insider, and only those values. kinda like booleans. they can either be "true" or "false". Things like "maybe" or "perhaps" are not acceptable options for booleans.
// with enums, we determine the set of values an enum can possibly have, so we don't make mistakes while using them.
//here's how:
//we define an enum
//inside of it we provide the cases

enum weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}
// ^^ now instead of strings, we can use enums.

var day = weekday.monday
day = weekday.tuesday
day = weekday.friday
//day = weekday.january
// ^^ this gives an error because swift knows january isn't a case for weekday


// --> some shortcuts for enums:

// --> 1) if you have many cases, you can write case once and use commas to seperate each day like this:
enum months {
    case jan,feb,mar,apr,may,jun,jul,aug,sep,oct,nov,dec
}

//--> 2) when u sign a value to a variable or constant. it's data typed becomes of that! therefore with enums you can skip the enum name after using it once. for example
var aMonth = months.jan
aMonth = .feb
aMonth = .sep
//swift knows ".sep" referes to "months.sep" because the variable "aMonth" was declared and initiated with a "months" type value

// enums are also more efficient and optimized for swift to process
