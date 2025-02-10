import Cocoa

// handling errors is important
// 3 steps:
/*
 1- define all errors that might happen
 2- Writing a function that can flag up errors if they happen.
 3- Calling that function, and handling any errors that might happen.
 */

//ex: user asking for stength of password. if bad. let's flag up an error

//MARK: - step 1:  defining the error cases
enum PasswordError : Error{ // TODO: Mentor?? what is "Error" and why do "conform" to it?
    case short  //when password is too short
    case obvious  //when password is too obvious
}

//MARK: - step 2: writing a function to trigger when one or more of the errors is present
// instead of regular "->" we used "throws ->"
// when a  case that uses "throw" is executed, it will immidiatly exit the function.

func checkPasswordStrength (_ password:String) throws -> String {
    
    //cases in which it would throw an error
    if password.count < 5 {
        throw PasswordError.short
    }
    if password == "12345" {
        throw PasswordError.obvious
    }
    // TODO: Mentor?? i don't get "throw" it's not returning and "PasswordError.obvious" isn't even a value!
    
    
    // cases in which it would not throw error, and just return a string
    if password.count < 8 {
        return "ok strength"
    }
    else if password.count > 10 {
        return "good strength"
    }
    else{
        return "excellent strength"
    }
    
}


// MARK: - step 3: use the function and handle the errors
// there are 3 mini steps:
/*
 step 3.1: start a block of code with "do {"
 step 3.2: call one or more throwing functions by saying "try"
 step 3.3: use a catch block to handle errors
 
 - psuedo code example:
 do{
    try someFunction()
 }
 catch{
 print("handle the errors here")
 }
 */

let string = "12345"

do{ // <------ if any errors exist, the do block will be skipped.
    let result = try checkPasswordStrength(string)
    print ("password rating is : \(result)")
}
catch PasswordError.short{
    print("there was an error. your password is too short")
}
catch PasswordError.obvious{
    print("there was an error. this combo is too obvious.")
}
catch{ //this is a catch all
    print("there was an error. error: \(error.localizedDescription)")
          // the (error.localizedDescription) shows the error code to the user.
}


//Note: if you use "!" after "try":
// it means "i think the function is safe to throw with no errors" but if you're wrong. your whole code will crash :)




