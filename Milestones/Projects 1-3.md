# What you learned

So far we have covered:

- Building scrolling forms that mix text with controls such as Picker, which SwiftUI turns into a beautiful table-based layout where new screens slide in with fresh choices.
- Creating a NavigationView and giving it a title. This not only allows us to push new views onto the screen, but also lets us set a title and avoid problems with content going under the clock.
- How to use @State to store changing data, and why it’s needed. Remember, all our SwiftUI views are structs, which means they can’t be changed without something like @State.
- Creating two-way bindings for user interface controls such as TextField and Picker, learning how using \$variable lets us both read and write values.
- Using ForEach to create views in a loop, which allows us to make lots of views all at once.
- Building complex layouts using VStack, HStack, and ZStack, as well as combining them together to make grids.
- How to use colors and gradients as views, including how to give them specific frames so you can control their size.
- How to create buttons by providing some text or an image, along with a closure that should be executed when the button is tapped.
- Creating alerts by defining the conditions under which the alert should be shown, then toggling that state from elsewhere.
- How (and why!) SwiftUI uses opaque result types (some View) some extensively, and why this is so closely linked to modifier order being important.
- How to use the ternary operator to create conditional modifiers that apply different results depending on your program state.
- How to break up your code into small parts using view composition and custom view modifiers, which in turn allows us to build more complex programs without getting lost in code.

# Structs vs classes

First, something that should hopefully be fairly fresh in your memory: structs and classes. These are both ways of letting us build complex data types with properties and methods, but the way they work – more specifically, how they differ – matters.

If you remember, there are five key differences between structs and classes:

- Classes don’t come with a memberwise initializer; structs get these by default.
- Classes can use inheritance to build up functionality; structs cannot.
- If you copy a class, both copies point to the same data; copies of structs are always unique.
- Classes can have deinitializers; structs cannot.
- You can change variable properties inside constant classes; properties inside constant structs are fixed regardless of whether the properties are constants or variables.
