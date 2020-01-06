import UIKit

/*
 - Strings and integers
    Swift is what’s known as a type-safe language, which means that every variable must be of one specific type.
*/

var str = "Hello, playground"
var population = 8_000_000

/*
 - Multi-line strings
    If you only want multi-line strings to format your code neatly, and you don’t want those line breaks to actually be in your string, end each line with a \, like this:

*/

var str2 = """
This goes \
over multiple \
lines
"""

/*
 - Doubles and booleans
 */

var pi = 3.141
var awesome = true

/*
 - String interpolation
 */

var score = 85
var interpolated = "Your score was \(score)"

/*
 - Constants
    The let keyword creates constants, which are values that can be set once and never again. For example:
 */

let taylor = "swift"

/*
 - Type annotations
    If you want you can be explicit about the type of your data rather than relying on Swift’s type inference, like this:
 */

let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true
