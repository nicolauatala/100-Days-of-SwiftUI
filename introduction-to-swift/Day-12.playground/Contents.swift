import UIKit

/*
 - Handling missing data
 Swift’s solution is called optionals, and you can make optionals out of any type. An optional integer might have a number like 0 or 40, but it might have no value at all – it might literally be missing, which is nil in Swift.

 To make a type optional, add a question mark after it. For example, we can make an optional integer like this:
 */

var age: Int? = nil
//That doesn’t hold any number – it holds nothing. But if we later learn that age, we can use it:

age = 38

/*
 - Unwrapping optionals
 Optional strings might contain a string like “Hello” or they might be nil – nothing at all.

 Consider this optional string:

*/
var name: String? = nil

if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

/*
 - Unwrapping with guard
An alternative to if let is guard let, which also unwraps optionals. guard let will unwrap an optional for you, but if it finds nil inside it expects you to exit the function, loop, or condition you used it in.
 */

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }

    print("Hello, \(unwrapped)!")
}

/*
 - Force unwrapping
 Optionals represent data that may or may not be there, but sometimes you know for sure that a value isn’t nil. In these cases, Swift lets you force unwrap the optional: convert it from an optional type to a non-optional type.

 For example, if you have a string that contains a number, you can convert it to an Int like this:

 
 */
let str = "5"
let num = Int(str)!

/*
 - Implicitly unwrapped optionals
Implicitly unwrapped optionals exist because sometimes a variable will start life as nil, but will always have a value before you need to use it. Because you know they will have a value by the time you need them, it’s helpful not having to write if let all the time.
 */

var age2: Int! = nil
age2 = 99

/*
 - Nil coalescing
 The nil coalescing operator unwraps an optional and returns the value inside if there is one. If there isn’t a value – if the optional was nil – then a default value is used instead.
*/
func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous"
let user2 = username(for: 1) ?? "Anonymous"

/*
 - Optional chaining

 Swift provides us with a shortcut when using optionals: if you want to access something like a.b.c and b is optional, you can write a question mark after it to enable optional chaining: a.b?.c.

 When that code is run, Swift will check whether b has a value, and if it’s nil the rest of the line will be ignored – Swift will return nil immediately. But if it has a value, it will be unwrapped and execution will continue.
 */

let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()

/*
 - Optional try
 Back when we were talking about throwing functions, we looked at this code:
 */
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

/*
 The first is try?, and changes throwing functions into functions that return an optional. If the function throws an error you’ll be sent nil as the result, otherwise you’ll get the return value wrapped as an optional.

 Using try? we can run checkPassword() like this:
 */
if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}

/*
 The other alternative is try!, which you can use when you know for sure that the function will not fail. If the function does throw an error, your code will crash.

 Using try! we can rewrite the code to this:
 */
try! checkPassword("sekrit")
print("OK!")

/*
 - Failable initializers
 When talking about force unwrapping, I used this code:
*/

let str5 = "5"
let num5 = Int(str)

/*
 That converts a string to an integer, but because you might try to pass any string there what you actually get back is an optional integer.

 This is a failable initializer: an initializer that might work or might not. You can write these in your own structs and classes by using init?() rather than init(), and return nil if something goes wrong. The return value will then be an optional of your type, for you to unwrap however you want.

 As an example, we could code a Person struct that must be created using a nine-letter ID string. If anything other than a nine-letter string is used we’ll return nil, otherwise we’ll continue as normal.

 Here’s that in Swift:
 */
struct Person {
    var id: String

    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

let p1 = Person(id: "aaaaaaaaa")

/*
 -Typecasting
 Swift must always know the type of each of your variables, but sometimes you know more information than Swift does. For example, here are three classes:
 */

class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

/*
If we want to loop over the pets array and ask all the dogs to bark, we need to perform a typecast: Swift will check to see whether each pet is a Dog object, and if it is we can then call makeNoise().

This uses a new keyword called as?, which returns an optional: it will be nil if the typecast failed, or a converted type otherwise.

Here’s how we write the loop in Swift:
 */
for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}
