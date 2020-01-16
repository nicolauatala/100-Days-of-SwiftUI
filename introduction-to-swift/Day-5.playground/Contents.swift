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


