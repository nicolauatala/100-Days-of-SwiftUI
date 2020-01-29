# WeSplit

## Inside Xcode you should see the following files in the space on the left, which is called the project navigator:

- AppDelegate.swift contains code for managing your app. It used to be common to add code here, but these days it’s quite rare.
- SceneDelegate.swift contains code for launching one window in your app. This doesn’t do much on iPhone, but on iPad – where users can have multiple instances of your app open at the same time – this is important.
- ContentView.swift contains the initial user interface (UI) for your program, and is where we’ll be doing all the work in this project.
- Assets.xcassets is an asset catalog – a collection of pictures that you want to use in your app. You can also add colors here, along with app icons, iMessage stickers, and more.
- LaunchScreen.storyboard is a visual editor for creating a small piece of UI to show when your app is launching.
- Info.plist is a collection of special values that describe to the system how your app works – which version it is, which device orientations you support, and more. Things that aren’t code, but are still important.
- Preview Content is a yellow group, with Preview Assets.xcassets inside – this is another asset catalog, this time specifically for example images you want to use when you’re designing your user interfaces, to give you an idea of how they might look when the program is running.

```swift
struct ContentView: View {
    var body: some View {
        Text("Hello World")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
```

struct ContentView: View creates a new struct called ContentView, saying that it conforms to the View protocol. View comes from SwiftUI, and is the basic protocol that must be adopted by anything you want to draw on the screen – all text, buttons, images, and more are all views, including your own layouts that combine other views.

var body: some View defines a new computed property called body, which has an interesting type: some View. This means it will return something that conforms to the View protocol, but that extra some keyword adds an important restriction: it must always be the same kind of view being returned – you can’t sometimes return one type of thing and other times return a different type of thing.

The View protocol has only one requirement, which is that you have a computed property called body that returns some View. You can (and will) add more properties and methods to your view structs, but body is the only thing that’s required.

Fourth, Text("Hello World") creates a text view using the string “Hello World”. Text views are simple pieces of static text that get drawn onto the screen, and will automatically wrap across multiple lines as needed.

Below the ContentView struct you’ll see a ContentView_Previews struct, which conforms to the PreviewProvider protocol. This piece of code won’t actually form part of your final app that goes to the App Store, but is instead specifically for Xcode to use so it can show a preview of your UI design alongside your code.
