import Cocoa

// switch statements

enum Weather {
    case sunny, cloudy, snowy, rainy, unknown
}

let forecast:Weather = .sunny


// -> writing code like this is exhausting!
if forecast == .sunny {
    print("It's going to be a sunny day!")
} else if forecast == .cloudy {
    print("no need for sunglasses!")
} else if forecast == .rainy {
    print("pack an umbrella")
} else if forecast == .snowy {
    print("wear layers")
} else{
    print("sorry don't know what the weather will be like")
}

// -> let's use switch. it makes sure you don't double check, and you don't miss anything
// with switch, all cases must be checked! you can't choose to not include one!
// it works like "else if" where if the first checked item matches, it stops going through the rest of them. (for efficiency reasons)
// each case is being compared to our switch which is "forecast"
// when each case is true, it executes what is written after ":"
switch forecast{
case .sunny:
    print("sunny day")
case .rainy:
    print("rainy day")
case .cloudy:
    print("cloudy day")
case .snowy:
    print("snowy day")
case .unknown:
    print("unknown weather")
}


//example with strings:
let place = "metropolis"

switch place {
case "gotham":
    print("it's gotham")
case "tokyo":
    print("it's tokyo")
case "Istanbul":
    print("it's istanbul")
default: //this runs when all other cases fail to match
    print("idk this city")
}
//Important: put default as your last line in the switch, because if you put it at the top, it will be the first line of code that is true and the rest of the code will be useless


// now let's say you needed to force swift to keep checking cases and executing them after the first one was a match:
// we do it by using "fallthrough" - but it's not very commonly used
let day = 5
print ("my true love gave to me...")

switch day{
case 5:
    print("5 golden rings")
    fallthrough //this means "go execute the case right after this current case"
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 french hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("1 pear tree")
}
