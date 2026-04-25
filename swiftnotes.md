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

swift code is built from statements like declarations, expressions, and control flow (if, switch, loops).

#### Expression & Declaration Statements

- Declarations introduce names (like variables and constants).
- Expressions statements evaluate an expressioins, such as a function call.

- ex -
`
let x = 2 // declaration
print(x) // expression statement
`

- this example shows a constant declaration and an expression statement that prints its value.


#### Semicolons and Blocks

- Semicolons are optional at line ends -- use them only to seperate multiple statements on one line.
- Braces group statements into a block.

- ex - `

let a = 1; let b = 2 // semicolons (;) can seperate multiple statements on one line
print(a + b)

if a < b {
	print("a is less than b")
}
`

- Swift does not require semicolons at the end of each line like Java or C.
- use them only when writing more than one statement on the same line.
- Braces `{...}` form blocks that group statements.


### Output

- Use `print()` to write text and values to output.
- use string interpolations to combine values.

#### Print Text

- Use `print()` to write text.
- Interpolate values with `\(expr)`. 

- ex -`
print("Hello World!")
let name = "John"
print("Hello \(name)")

let a = 2, b = 5
print("Total: \(a + b)")
`

- this example above prints text adn uses string interpolations to include values.

#### Print Without Newline

- Use the `terminator` parameter to avoid a trailing newline.
- ex -`
for n in 1...3{
	print(n, terminator: " ") // prints on one line
}
`

- this example prints numbers on a single line by setting `terminator` to a space.

- Tip: `print()` ends with a newline. Pass `terminator: " "` to avoid a newline.
  

#### Number Output

- we can still use `print()` for prining numbers and format them using interpolation or format styles.

- ex. - here, we print values directly or embed them using string interpolation with `\(values)`
- `
let a = 5, b = 10
print(a, b) // space-seperated by default
print("a=\(a), b=\(b)") // interpolation
print("sum = \(a + b)") // inline math - using math in interpolation braces
`

#### Math Functions

- common functions like `abs`, `min`, `max`	helps compute numeric results.
	- `abs(x)` = returns the absolute value of `x`
	- `min(x, y)` = returns the smaller of `x` and `y`
	- `max(x, y)` = returns the larger of `x` and `y`

- ex - `
let x = -10
print(abs(x)) // 10
print(min(10, 9)) // 9
print(max(100, 9)) // 100
`

### Comments

- Comments are used to explain code.
- Swift support single line, multi line (nestable), and documentation comments.

#### Single-line vs Multi-line Comments

- We can use `//` for single line comment, and `/*...*/` for multi-line comment.

- ex - `
// this is a single line comment
print("Hello")

/* this is a 
multi line
comment */
print("World!")

/* this is nested comment - outer comment 
	/* which is basically a comment inside a comment? - inner comment */
*/
`

#### Documentation Comment

- we can use `///` before declarations to generate documentation, eg. for functions, types, and properties.
- Documentation comments can include parameters, return values, and more.
- How do they differ from regular comments? They are procesed by the compiler and can be used to generate documentation. Thats how.

- ex. -`
/// erturns the sum of two intergers.
/// - Parameters: a, b

func add(_ a: Int, _ b: Int) -> Int {a + b}
print(add(10, 100)) // 110
`

- here, in our example, we are using a triple forward slash (`///`) for documentation comment a function.

- Note: Multi line documentation comments starts with `/**` and ends with `*/`.


### Variables

- for variables, you can declare constants with `let`, normal variables with `var`, and use type interface or annotations as needed.

#### Constants and Variables

- You can declare constants with `let` and variables with `var`. Meaning, you can change the value of var, but cant change the value of let once decalred.
- note that, constants cannot be reassigned, they are immutable.

- ex. -
`
let constant = 100
var counter = 0

counter += 1

// constant = 50 // it'll give an error if this is uncommented

print(constant, counter)
`

#### Swift Type Inference

- Swift infers types automatically when possible, but you cna also use annotations for clarity of what that variable is suppoed to accept.
- ex -
`
let x = 50
let y: Int = 10

print(x, y)
`

- here, we see that Swift infers the type automatically when possible or type is not specified - `let x = 10`, but when the type is specified/inferred/annotated, it gives the code more clarity of what the code is willing to accept as data type.


#### Optioanals

- we can use `?` to declare values that may be `nil`.

- ex - 
`
var name: String? = nil
name = "John"
print(name ?? "none")
`

- here, the example shows an optional that may be `nil`.


#### Print Variables

- for printing variables' values, we can use concatenation (adding) or string interpolation.
- for interpolation, we can use `\(expr)` to insert values, which we can further use with a seperator and a terminator.

##### Concatenation and Interpolation

- Concatenation can be used to combine(add) strings.
- Interpolation can be used to embed values inside strings.

- ex. -
`
let first = "Hello"
let second = "World!"

// using Concatenation
print(first + ", " + second)

// using Interpolation
print("\(first), \(second)")

let a = 2, b = 3
print("a = \(a), b = \(b)")
`

##### Custom Seperator and Terminator

- Seperator is used in between strings/items to seperate them.
- Terminator is used at the end of the item/string to terminate that item with the set terminator.

- ex - 
`
let a = 1, b = 2, c = 3
print(a, b, c, seperator: ", ", terminator: "; ")
print("done") // prints on the same line after the semicolon
`

- Tip: Interpolation is safer and cleaner to use than concatenation, especially with non-string values.


#### Multiple Variables

- when you are declaring variables or constants, and they are of the same type like Int, or String, you can declare all of them in a single line.
- however, note that, it is only recommended when declaring them in a single line is easier to read and doesnt get in the way of your understanding.

- ex. -
`
var x = 1, y = 2, z = 3 // declaring variables in one line
let a = 10, b = 100 // declaring constants in one line

print(x, y, z, a, b)
`

##### Declaring Multiple Variables with Type Annotations

- We can use explicit types when inference could be ambiguous or to document our intent of data type.

- Note: here, explicit refers to code, data types, or operations that are clearly, directly, and specifically stated by the programmer rather than inferred or handled (decided) automatically by the compiler/runtime. 
- It leaves no room for ambiguity (guessing), ensuring the computer executes a precise instruction, such as int x = 5; (explicit) vs var x = 5; (implicit). 
- inference refers to deciding the data type we're going to use for our variable declaration.

- ex. -
`
var i: Int = 1, j: Int = 2
let fName: String = "John", lName: String = "Doe"

print(i, j, fName, lName)
`

#### Identifiers

- Identifiers name the variables, constants, types and functions, etc.
- In simpler words, Identifiers are basically the user-defined names given to various program elements, including variables and functions.

##### Rules for Identifiers

- Identifiers must -
	- Start with a letter or underscore
	- May include numbers after the first character
	- Avoid keywords unless escaped with backticks(`)

- they can also contain Unicode and must not start with a number.

- ex. -
`
let name = "John"
let pi = 3.14
let _hidden = true
`

##### Escaping Keywords and Unicode

- We can escape keywords with backticks whenever required, and also note that identifiers can also include Unicode characters.

- ex. -
`
let `switch` = "ok" // we escaped an official keyword using backticks
let 🐶 = "dog" // here we use Unicode identifier - emoji - but not all emojis
print(`switch`, ❄️)
`

- So, using backticks, we can escape reserved keywords in identifiers, and also remember that Swift identifiers can also include Unicode characters without variation selectors.
- Note that, Backticks in Swift only allow you to use **reserved keywords** (like class, struct`, etc.) as identifiers. They do not relax Unicode validity rules.


#### Constants

- we can use `let` to declare constant variables that do not change - like Pi, or days in week, or minutes, or seconds.

- so, in other words, we use `let` to bind a value once so it cannot be reassigned or changed later.
- ex. -
`
let pi = 3.14
let maxCount = 100

// pi = 4.0 // will give Error: as we cannot assign to value: 'pi' is a 'let' constant
`

##### Constants and Collections

- if an array is bound with `let`, we can't mutate(change) it or its values.

- ex. -
`
var nums = [1, 2, 3, 4, 5]
nums.append(10) // OK: nums is var so it can be done

let fixedNums = [9, 8, 7, 6, 5]
fixedNums.append(4) // Error if we uncomment it, it'll throw an error becasue we're trying to mutate a constant
`


#### Real Life Examples

- in real life examples, we can use variables to track values like counters, flags, user inputs, acc number and more.

##### Example: Counter

- here, we use a variable to track a counter and print it as it changes.
- `
var count = 0
count += 1
print("Count: \(count)")
`

##### Example: Greeting

- here, we store a String value in a variable and use String interpolation to printit.
- `
var name = "John"
print("Hello, \(name)")

name = "Joe" // reassigning the String with a new name as its a non-constant
print("Hello, \(name)")
`

### Data Types

- 

#### Numbers
#### Booleans
#### Characters


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