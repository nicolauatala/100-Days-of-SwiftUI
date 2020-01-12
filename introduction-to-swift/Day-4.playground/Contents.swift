import UIKit

/*
 - For loops

 */

let count = 1...10

//We can use a for loop to print each item like this:
for number in count {
    print("Number is \(number)")
}

//We can do the same with arrays:
let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

//If you don’t use the constant that for loops give you, you should use an underscore instead so that Swift doesn’t create needless values:
print("Players gonna ")

for _ in 1...5 {
    print("play")
}


/*
 - While loops

 */

var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

/*
 - Repeat loops

 */

var number2 = 1

repeat {
    print(number2)
    number2 += 1
} while number2 <= 20
print("Ready or not, here I come!")

//Because the condition comes at the end of the repeat loop the code inside the loop will always be executed at least once, whereas while loops check their condition before their first run.

//For example, this print() function will never be run, because false is always false:

while false {
    print("This is false")
}
//Xcode will even warn us that the print() line will never be executed.

//On the other hand, this print() function will be run once, because repeat only fails the condition after the loop runs:

repeat {
    print("This is false")
} while false
