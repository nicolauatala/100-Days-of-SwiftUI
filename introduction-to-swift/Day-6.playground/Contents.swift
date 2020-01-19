import UIKit

/*
 - Creating basic closures
 */

//Swift lets us use functions just like any other type such as strings and integers. This means you can create a function and assign it to a variable, call that function using that variable, and even pass that function into other functions as parameters.

//Functions used in this way are called closures, and although they work like functions they are written a little differently.

//Let’s start with a simple example that prints a message:

let driving = {
    print("2 - I'm driving in my car")
}

driving()

/*
 - Accepting parameters in a closure
 */

let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}

driving2("London")

/*
 - Returning values from a closure
 */
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)

/*
 - Closures as parameters
 */

func travel(action: () -> Void) {
    print("1 - I'm getting ready to go.")
    action()
    print("3 - I arrived!")
}

travel(action: driving)

/*
 - Trailing closure syntax
 */

// Because its last parameter is a closure, we can call travel() using trailing closure syntax like this:

// In fact, because there aren’t any other parameters, we can eliminate the parentheses entirely:


travel {
    print("2º - 'm driving in my car")
}

/*
 - Using closures as parameters when they accept parameters
 */

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}

/*
 - Using closures as parameters when they return values
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
 - Shorthand parameter names
 */

func travelShorthand(action: (String) -> String) {
    print("Shorthand - I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("Shorthand - I arrived!")
}

//We can call travel() using something like this:
travelShorthand { (place: String) -> String in
    return "Shorthand - I'm going to \(place) in my car"
}

//However, Swift knows the parameter to that closure must be a string, so we can remove it:
travelShorthand { place -> String in
    return "Shorthand - I'm going to \(place) in my car"
}

//It also knows the closure must return a string, so we can remove that:
travelShorthand { place in
    return "Shorthand - I'm going to \(place) in my car"
}

//As the closure only has one line of code that must be the one that returns the value, so Swift lets us remove the return keyword too:

travelShorthand { place in
    "I'm going to \(place) in my car"
}
// Swift has a shorthand syntax that lets you go even shorter. Rather than writing place in we can let Swift provide automatic names for the closure’s parameters. These are named with a dollar sign, then a number counting from 0.

travelShorthand {
    "I'm going to \($0) in my car"
}

/*
 - Closures with multiple parameters
 */

func travelmultipleparameters(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}
//We’re going to call that using a trailing closure and shorthand closure parameter names. Because this accepts two parameters, we’ll be getting both $0 and $1:

travelmultipleparameters {
    "I'm going to \($0) at \($1) miles per hour."
}

// Returning closures from functions

func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}
//We can now call travel() to get back that closure, then call it as a function:

let result = travel()
result("London")
//It’s technically allowable – although really not recommended! – to call the return value from travel() directly:

let result2 = travel()("London")
