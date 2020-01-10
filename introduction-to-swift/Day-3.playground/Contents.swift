import UIKit

/*
 - Arithmetic operators
 */

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

let remainder = 13 % secondScore

/*
 - Operator overloading
Swift supports operator overloading, which is a fancy way of saying that what an operator does depends on the values you use it with. For example, + sums integers like this:
 */

let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"

//You can even use + to join arrays, like this:

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

/*
 - Compound assignment operators
 Swift has shorthand operators that combine one operator with an assignment, so you can change a variable in place. These look like the existing operators you know – +, -, *, and /, but they have an = on the end because they assign the result back to whatever variable you were using.
 
 For example, if someone scored 95 in an exam but needs to be penalized 5 points, you could write this:
 */
var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

/*
 - Comparison operators
 */

let firstScoreComparison = 6
let secondScoreComparison = 4

firstScoreComparison == secondScoreComparison
firstScoreComparison != secondScoreComparison

firstScoreComparison < secondScoreComparison
firstScoreComparison >= secondScoreComparison

/*
 - Conditions
 */

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

/*
 - Combining conditions

 */

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("One of them is over 18")
}

/*
 - The ternary operator

 */

let firstCardternary = 11
let secondCardternary = 10
print(firstCardternary == secondCardternary ? "Cards are the same" : "Cards are different")


/*
 - Switch statements
*/

let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    /*Swift will only run the code inside each case. If you want execution to continue on to the next case, use the fallthrough keyword like this:*/
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

/*
 - Range operators
 Swift gives us two ways of making ranges: the ..< and ... operators. The half-open range operator, ..<, creates ranges up to but excluding the final value, and the closed range operator, ..., creates ranges up to and including the final value.
 
 For example, the range 1..<5 contains the numbers 1, 2, 3, and 4, whereas the range 1...5 contains the numbers 1, 2, 3, 4, and 5.
 
 Ranges are helpful with switch blocks, because you can use them for each of your cases. For example, if someone sat an exam we could print different messages depending on their score:
*/

let scoreRange = 85

switch scoreRange {
case 0..<50:
    print("You failed badly.")
case 50...85:
    print("You did OK.")
default:
    print("You did great!")
}
