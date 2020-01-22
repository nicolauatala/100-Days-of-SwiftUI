import UIKit

/*
 -Using closures as parameters when they accept parameters
*/

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}
//Now when we call travel() using trailing closure syntax, our closure code is required to accept a string:

travel { (place: String) in
    print("I'm going to \(place) in my car")
}

/*
 -Using closures as parameters when they return values
*/

func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}
//Now when we call travel() using trailing closure syntax, our closure code is required to accept a string and return a string:

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

/*
 -Shorthand parameter names
 */

func travel2(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}
//We can call travel() using something like this:

travel2 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
//However, Swift knows the parameter to that closure must be a string, so we can remove it:

travel2 { place -> String in
    return "I'm going to \(place) in my car"
}

travel2 { place in
    return "I'm going to \(place) in my car"
}
//As the closure only has one line of code that must be the one that returns the value, so Swift lets us remove the return keyword too:

travel2 { place in
    "I'm going to \(place) in my car"
}
//Swift has a shorthand syntax that lets you go even shorter. Rather than writing place in we can let Swift provide automatic names for the closure’s parameters. These are named with a dollar sign, then a number counting from 0.

travel2 {
    "I'm going to \($0) in my car"
}

/*
 -Returning closures from functions

 */
func travel3() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}
//We can now call travel() to get back that closure, then call it as a function:

let result = travel3()
result("London")
//It’s technically allowable – although really not recommended! – to call the return value from travel() directly:

let resultResult = travel3()("London")
