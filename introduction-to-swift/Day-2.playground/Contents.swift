import UIKit

/*
 - Arrays
 Arrays are collections of values that are stored as a single value. For example, John, Paul, George, and Ringo are names, but arrays let you group them in a single value called The Beatles.
 */

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

beatles[1]

/*
 - Sets
 Sets are collections of values just like arrays, except they have two differences:

Items aren’t stored in any order; they are stored in what is effectively a random order.
No item can appear twice in a set; all items must be unique.
You can create sets directly from arrays, like this:
*/
let colors = Set(["red", "green", "blue"])

// If you try to insert a duplicate item into a set, the duplicates get ignored. For example:
let colors2 = Set(["red", "green", "blue", "red", "blue"])

/*
 - Tuples
Tuples allow you to store several values together in a single value. That might sound like arrays, but tuples are different:

You can’t add or remove items from a tuple; they are fixed in size.
You can’t change the type of items in a tuple; they always have the same types they were created with.
You can access items in a tuple using numerical positions or by naming them, but Swift won’t let you read numbers or names that don’t exist.
 
Tuples are created by placing multiple items into parentheses, like this:
*/

var name = (first: "Taylor", last: "Swift")
name.first
name.0

name.first = "Atala"

name.first

/*
 Arrays, sets, and tuples can seem similar at first, but they have distinct uses. To help you know which to use, here are some rules.

If you need a specific, fixed collection of related values where each item has a precise position or name, you should use a tuple:
*/
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")
 
/*If you need a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, you should use a set:
*/
let set = Set(["aardvark", "astronaut", "azalea"])

let arrayAny = ["a", "b", "b", "c", "c", "d"]
let setArray = Set(arrayAny)
setArray

/*
 If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array:
*/
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]


/*
 - Dictionaries
 Dictionaries are collections of values just like arrays, but rather than storing things with an integer position you can access them using anything you want.
 
 The most common way of storing dictionary data is using strings. For example, we could create a dictionary that stores the height of singers using their name:
 */
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

//These identifiers are called keys, and you can use them to read data back out of the dictionary:
heights["Taylor Swift"]

/*
 - Dictionary default values
 If you try to read a value from a dictionary using a key that doesn’t exist, Swift will send you back nil – nothing at all.
 While this might be what you want, there’s an alternative: we can provide the dictionary with a default value to use if we request a missing key.
 */
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]
favoriteIceCream["Paul"]
favoriteIceCream["Charlotte"]
favoriteIceCream["Charlotte", default: "Unknown"]

/*
 - Creating empty collections
 Arrays, sets, and dictionaries are called collections, because they collect values together in one place.
 
 If you want to create an empty collection just write its type followed by opening and closing parentheses. For example, we can create an empty dictionary with strings for keys and values like this:
*/
 var teams = [String: String]()
// We can then add entries later on, like this:

 teams["Paul"] = "Red"
// Similarly, you can create an empty array to store integers like this:

 var results = [Int]()
// The exception is creating an empty set, which is done differently:

 var words = Set<String>()
 var numbers = Set<Int>()
 /*
 This is because Swift has special syntax only for dictionaries and arrays; other types must use angle bracket syntax like sets.
 
 If you wanted, you could create arrays and dictionaries with similar syntax:
 */
 var scores = Dictionary<String, Int>()
 var results2 = Array<Int>()

/*
 Enumerations – usually called just enums – are a way of defining groups of related values in a way that makes them easier to use.
 */

enum Result {
    case success
    case failure
}
//And now when we use it we must choose one of those two values:

let result4 = Result.failure

// Enum associated values
// This lets you attach additional information to your enums so they can represent more nuanced data.
//Enum associated values let us add those additional details:

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")

// Enum raw values
//Swift will automatically assign each of those a number starting from 0, and you can use that number to create an instance of the appropriate enum case. For example, earth will be given the number 2, so you can write this:
enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)

//If you want, you can assign one or more cases a specific value, and Swift will generate the rest. It’s not very natural for us to think of Earth as the second planet, so you could write this:

enum Planet2: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

