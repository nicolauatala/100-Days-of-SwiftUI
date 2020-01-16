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
