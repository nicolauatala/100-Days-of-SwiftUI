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
