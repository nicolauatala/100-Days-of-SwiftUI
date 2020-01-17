import UIKit

// Writing functions
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    print(message)
}
//We can now run that using printHelp() by itself:

printHelp()

//Accepting parameters
func square(number: Int) {
    print(number * number)
}
//That tells Swift we expect to receive an Int, and it should be called number. This name is used both inside the function when you want to refer to the parameter, but also when you run the function, like this:

square(number: 8)

//Returning values

func square2(number: Int) -> Int {
    return number * number
}
//Now we can grab that return value when the function is run, and print it there:

let result = square2(number: 8)
print(result)

//Parameter labels
func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Taylor")

// Omitting parameter labels
func greet(_ person: String) {
    print("Hello, \(person)!")
}
//You can now call greet() without having to use the person parameter name:

greet("Taylor")

//Default parameters
func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}
//That can be called in two ways:

greet("Taylor")
greet("Taylor", nicely: false)


// Variadic functions
func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
//Now we can run that with lots of numbers just by passing them in separated by commas:

square(numbers: 1, 2, 3, 4, 5)

//Writing throwing functions
enum PasswordError: Error {
    case obvious
}
//Now we’ll write a checkPassword() function that will throw that error if something goes wrong. This means using the throws keyword before the function’s return value, then using throw PasswordError.obvious if their password is “password”.

//Here’s that in Swift:

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}

// Running throwing functions
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

func doubleInPlace(number: inout Int) {
    number *= 2
}

// inout parameters

//All parameters passed into a Swift function are constants, so you can’t change them. If you want, you can pass in one or more parameters as inout, which means they can be changed inside your function, and those changes reflect in the original value outside the function.

//For example, if you want to double a number in place – i.e., change the value directly rather than returning a new one – you might write a function like this:

var myNum = 10
doubleInPlace(number: &myNum)

print(myNum)
