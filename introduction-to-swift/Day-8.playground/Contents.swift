import UIKit

/*
 Structs part one:
 Structs let us create our own data types out of several small types. For example, you might put three strings and a boolean together and say that represents a user in your app.
 
 */

// - Creating your own structs
struct Sport {
    var name: String
}
//That defines the type, so now we can create and use an instance of it:

var tennis = Sport(name: "Tennis")
print(tennis.name)
//We made both name and tennis variable, so we can change them just like regular variables:

tennis.name = "Lawn tennis"

// - Computed properties

struct Sport2 {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

//We can try it out by creating a new instance of Sport:

let chessBoxing = Sport2(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

// - Property observers

// Property observers let you run code before or after any property changes. To demonstrate this, we’ll write a Progress struct that tracks a task and a completion percentage:

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
        willSet {
            print("willSet")
        }
    }
}
//We can now create an instance of that struct and adjust its progress over time:

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

// - Methods

struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}
//That method belongs to the struct, so we call it on instances of the struct like this:

let london = City(population: 9_000_000)
london.collectTaxes()

// - Mutating methods

/*
 If a struct has a variable property but the instance of the struct was created as a constant, that property can’t be changed – the struct is constant, so all its properties are also constant regardless of how they were created.
 */
struct Person {
    var name: String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()
person.name


// STRING
// - Properties and methods of strings

let string = "Do or do not, there is no try."
//You can read the number of characters in a string using its count property:

print(string.count)
//They have a hasPrefix() method that returns true if the string starts with specific letters:

print(string.hasPrefix("Do"))
//You can uppercase a string by calling its uppercased() method:

print(string.uppercased())
//And you can even have Swift sort the letters of the string into an array:

print(string.sorted())


// ARRAY
// Properties and methods of arrays

var toys = ["Woody"]
//You can read the number of items in an array using its count property:

print(toys.count)
//If you want to add a new item, use the append() method like this:

toys.append("Buzz")
//You can locate any item inside an array using its firstIndex() method, like this:

toys.firstIndex(of: "Buzz")
//That will return 1 because arrays count from 0.

//Just like with strings, you can have Swift sort the items of the array alphabetically:

print(toys.sorted())
//Finally, if you want to remove an item, use the remove() method like this:

toys.remove(at: 0)
