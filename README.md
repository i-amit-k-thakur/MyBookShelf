# Chapter 1 : SwiftUI: A New Beginning

### SwiftUI Principles
* Declarative vs Imperative
  * In Declarative framework, the focus is to explain how the UI should look like and behave. No specifics required
  * In Imperative frameowrk, we need to write all the code to create the look and behaviour. Specifics required

* State Management
  * SwiftUI supports Data Binding. This allows us to map deta betwween UI elements and Data Models
  * It works well with Combine, Apple's native reactive framework

* Composition over Inheritance
  * SwiftUI requires us to compose the UI using smallers view elements.
  * Its lightweight and flexible
 
* Everything is a View - Except that it isn't
  * Mostly everything in SwiftUI is called Views.
  * SwiftUI expected us to provide our description of a View and it generates the UI based on our View Description
 
* UIs are a Function of their State
  * SwiftUI allows UIBindings which means our UI reacts to changes happening to a model.
  * The UI and Data Models are always in sync.   



# Chapter 2 : Getting Started with SwiftUI

### Key Concepts

* View Protocol: The View protocol provides the outline for any view in SwiftUI. It requires that any conforming struct should define a body property.
* Some View: SwiftUI relies on us returning `some view` as the body of any View type. It tells the compiler that the returned object will conform to View protocol although we are not sure which exact type thare.
* Preview Provider: PreviewProvider is a special construct used by SwiftUI to generate view previoes on Canvas in XCode.
* The size of the view is only equal to the size of its content.
* Identifiable Protocol: Structs have to conform to identifiable protocols in order to be iterated via a list. This makes each element identifiable in a list.
