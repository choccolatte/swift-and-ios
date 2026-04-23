# Swift Notes
- Notes on everything Swift, Swift and iOS.

## Swift Basics


### Intro

- Swift is a modern, fast, and safe language for building apps across Apple platforms and more. It was created by Apple and is used to build addps for iPhone, iPad, Mac, Apple Watch, Apple TV.
- Swift uses type inference, optionals, value types, and protocol-oriented programming.

- Ex - `print("Hello World!")`

**Why use Swift?**
- It focuses on safety and speed.
- Features like optionals, value types, and generics help you avoid bugs and keep code clear.
	- great for iphone/ipad, Mac, Apple Watch, Apple TV dev.
	- open source and available on multiple platforms.
	- expressive syntax, optionals to model absence, adn value types for predictable behavior.
	- vibrant ecosystem and first-class tooling in Xcode.


#### Getting started with Swift

- check with `swift --version` on cmd to see if its installed in your device.
- if not, download it from Swift's official site.

- `print("Hello World!")` - saved in world.swift
- here, world.swift - is a Swift file, the top-level `print` function executes when run.
- print - is a method/function that writes text to standard output - Strings use double quotes.


### Syntax

- whats Swift syntax like?
	- **Constants/variables** - use `let` (constant) and `var` (variable).
	- **Types** - Common types include - `Int`, `Double`, `Bool`, `String`
	- **Type inference** - the compiler infers type from initial values - meaning, the compiler deduces what type of data is in a variable based on the initial value assigned to the variable.
	 (infer = the process of automatically deducing, concluding, or predicting information based on available data, rules, or patterns, rather than explicit instructions.)

	 - ex - `
	 let greeting = "Hello"
	 var name = "Swift"
	 print(greeting + "," + name)

	 let pi: Double = 3.14159
	 var count: Int = 5
	 print("pi = \(pi), count = \(count)")
	 `

	 - Note: unlike some other coding languages, in Swift, `let` is used for constants and `var` for variables.

	 - ex explained -
	 	- `let` creates an immutable(unchangable) constant; while `var` creates a mutable(changable) variable.
		- Type annotation is optional; here, we annotate `Double` and `Int`. Type annotation is var count: Int - where we declare the data type the variable is expecting.
		- String interpolation: \(expr) - inserts values into strings.


#### String Interpolation

- String Interpolation is a way to embed expressions inside string literals for formatting.
- In Swift, String interpolation is done using - `\(expr)`.
- the most common and simple way to use string interpolation is to embed variable names inside string literals.

- ex - 
`
let greeting = "Hello"
var name = "World"
print("\(greeting), \(name)")
`


#### Functions

- Functions are blocks of code that performs a specific task.
- Syntax - `func name (parameter: Type) -> Return`, call as `name(parameter)`.

- ex -
`
func add(_ a: Int, _ b: Int) -> Int {
	return a + b
}

print(add(5, 2)) // 10
`

- this example defines `add` with two `Int` parameters and returns their sum as `Int`.

:::note

- here _ is the external parameter name - which is used when a function is called - like - add(5, 2) - since here the external parameter names was blank.
- If there was an external parameter names here - add(one a : Int, two b : Int){} - when called, it would look like this - add(one: 5, two: 2)

:::

### Statements




#### Functions
#### Functions
#### Functions






### Statements
### Output
### Comments
### Variables
### Data Types
### Type Casting
### Operators
### Operators
### Strings
### Arrays
### Ranges
### If...Else
### Switch
### While Loop
### For Loop
### Break/Continue
### Collections




## Swift Types & Functions
## Swift Object Model
## Swift Robustness & Async
## Swift Tooling
## SwiftUI Basics
## SwiftUI Data & Architecture
## iOS Capabilities
## iOS Quality & Compliance
## iOS Release & Distribution