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

- Swift comes with these built-in data types 
	- `Int`
	- `Double`
	- `Bool`
	- `String`

- Swift uses type inference to deduce the type from the value.

##### Basic Types

- we declare constant types with `let` and variables with `var` as mentioned before.
- Swift infers the data type from the initial value you assign to it if the data is not inferred manually.

- ex.- 
`
let anInt = 12 // Int
let aDouble = 23.33 // Double
let isthisSwift = true // Bool
let greet = "Hello" // String

print(anInt)
print(aDouble)
print(isthisSwift)
print(greet)
`


##### Type Inference vs Annotation

- Swift usually infers the type from the initial value assigneed to the variable, but you also also explicitly assign the data type manually for clarity.

- ex. -
`
let inferred = 30 // Int (inferred)
let annotated: Double = 3.14 // Double (explicit)

print(type(of: inferred), type(of: annotated))
`


#### Numbers

- In numerical data types, Swift has integer types (like `Int`) and floating-point types (like `Double`).
- USe arithmetic operators to add, subtract, multiply and divide numbers.

##### Arithmetic

- Use `+`, `-`, `*`, and `/` to perform numeric operations. You can also convert types whenever needed.

- ex -
`
let a = 5, b = 10
print(b - a)
priont(a * b)
print(Double(b) / Double(a)) // type conversion of Int to Double
`

##### Integer Division vs Remainder

- Integer division drops any factorial part, while `%` returns the remainder.
- ex -
`
let a = 7, b = 3
print(a / b) // 2 (integer division)
print(a % b) // 1 (remainder - modulous division)
`

- the above example shows how integer division truncates zero and how teh remainder operator `%` returns the leftover remainder after the division.


#### Booleans

- the data type `Bool` represents the logical true/false.
- Combine `Bool` with conditions, or conditions with AND (`&&`), OR (`||`), and negate with NOT (`!`).

- ex. - here, we see an example that shows logical AND, OR, and NOT.
`
let a = true, b = false
print(a && b) // a AND b
print(a || b) // a OR b
print(!a) // prints b - since NOT a means anything but a = b
`


##### Comparison Results

- Relational operators like `>`, `==` and `!=` return bool data typevalues that you can use in conditions.

- ex. -
`
let a = 5, b = 3
print(a > b) // true
print(a == b) // false
print(a != b) // true - since a NOT equal b is true since 5 is not equal to 3
`


#### Characters

- In Swift, `Character` data type is one user-variable character, or just a single character like a or A and so on.
- Strings are collections of characters.


##### Characters and String Length

- Use `Character` for single letters.
- Use `String.count` to get the number of characters.

- ex. - here, we see an example that prints a character and a string length.
`
let ch: Character = "A"
print(ch)

let word = "World"
print(word.count) // String.count is String's value.count
`


##### Characters and String Conversion

- You can convert between `Character` and `String` as your code requires.

- ex. -
`
let ch: Character = "A"
let s = String(ch)

print(s) // "A" - its a String now where A was a Character before
`

##### Unicode and Grapheme Clusters

- Some characters use multiple Unicode scalars but still count as one character.

- ex. -
`
let Heart: Character = "💘"
print(heart)

let flag: Character = "No" // composed of two regional indicators

print(flag)
print("e\u{301}".count) // 1 (e + combining acute accent)
`


### Type Casting

- to use Type Casting, we can use `as`, `as?` and `as!` to convert between data types, especially with protocols and `Any`.

#### UpCasting and DownCasting

- Convert a value to a supertype (upcast) or attempt to convert back to a subtype using optional downcasting with `as?`.

- ex - here, we see an example that conditionlly casts values from `Any` to their concrete types -
`
let items: [Any] = [1, "Swift"]
for item in items{
	if let i = item as? Int{
		print("Int: \(i)")
	} else if let s = item as? String {
		print("String: \(s)")
	}
}
`

#### Forced DownCasting

- you can use `as!` only when you are certain of the runtime type. If the cast fails, the program will crash.
- prefer optional casting (`as?`) when the type may vary, and unwrap safely.

- ex - 
`
let value: Any = 50
let i = value as! Int // forced downcast
print(i)
`


### Operators

- We can use Operators to perform operations on values.
- Common groups are - arithmetic, assignment, comparison, and logical operators.
- Swift also has well-defined operator precedence.

- here we explore arithmetic, assignment, comparison, and logical operators - and how precedence affects evaluation order.

- ex - here, in this example we see Arithmetic(`+`), Comparison(`>`) and Logical(`&&`, `!`) operators.
`
let a = 5, b = 2

// arithmetic
print(a + b)

// comparison
print(a > b)

// logical
let t = true, f = false
print(t && !f)
`

#### Unary and Ternary

- Unary operators act on a single operand (like `!` to negate a boolean.)
- The ternary conditional operator `condition ? a : b` chooses between two values.

- ex. - here, in this example we flip a boolean with a unary `!` and use the ternary operator to pick a string based on a condition.
`
let flag = false
print(!flag) // since flag is false, we are using unary - !, so it will print true here.

let score = 90
let label = (score >= 90) ? "A" : "Not A" // Ternary condition
print(label)
`


#### Arithmetic Operators

- In Arithmetic operators, we use `+`, `-`, `*` and `/` to add, subtract, multiply and divide.
- Integer division truncates toward zero.

- ex. - these examples show addition, subtraction, multiplication, and integer division - and this example also demonstrates arithmetic with integers.
`
let a = 10, b 20
print(a - b)
print(a * b)
print(a / b) // this is integer division
`

##### Remainder Operator

- The remainder operator `%` gives the leftover after integer division.
- ex. -
`
print(7 % 3) // 1
print(8 % 2) // 0
print(10 5 6) // 4
`

- use `%` to check divisibility or cycle through a fixed range.


#### Assignment Operators

- Use `=` to assign a value to a variable.
- Compound assignment operators like `+=`, `-=`, `*=` and `/=` update a variable in place.

##### Compound Assignment

- use compound operators like `+=` and `*=` to update a variable in place.

- ex. - here, this example shows updating a variable with compound assignment operators.
`
var total = 100
total += 50
print(total)

total -= 30
print(total)

total *= 20
print(total)

total /= 40
print(total)
`

##### Append to String

- You can also use `+=` with strings to append text to a mutable string variable.

- ex - in this example, we append to a string in place with `+=`
`
var s = "Hello"
s += "World!"

print(s)
`


#### Comparison Operators

- it is used to compare values: `==`, `!=`, `>`, `<`, `>=`, `<=`.
- When using comparion operators, they return `Bool`.

##### Compare Integers

- Use Comparison operators - `==`, `!=`, `>`, `<`, `>=`, `<=` to compare numeric values.
- Whatever you use to comapre two things, the result will be a `Bool`.

- ex. - here, this example prints the results of several comparisons.
`
let a = 5, b = 10
print(a == b)
print(a != b)
print(a > b)
print(a < b)
print(a >= 5)
`

##### Compare Strings

- Strings compare lexicographically (in a dictionary order).
- Comparison is case-sensitive.

- ex. - this example compares strings using the same operators.
`
print("apple" < "banana") // true
print("World" == "World") // true
print("apple" > "apricot") // false
`


#### Logical Operators

- You can combine booleans with `&&` (AND), `||` (OR), and `!` (NOT).

##### Logical AND (&&)

- both conditions must be `true` for the result to be `true`.
- ex. -
`
let isOwner = true
let isAdmin = false

print(isOwner && isAdmin)
print(true && true)
`

##### Logical OR (||)

- At least one `true` makes the result `true` - meaning, one of the two conditions must be true for the statement to be true.

- ex. -
`
let a = true
let b = false

print(a || b)
print(false || false)
`

##### Logical NOT (!)

- it flips a boolean value - `true` becomes `fasle` and vice versa.

- ex. -
`
let flag = false
print(!flag) // prints true
print(!true) // prints false
`


#### Operator Precedence

- Operator precedence determines evaluation order.
- Multiplication comes before addition, `&&` before `||`.
- Also, use parantheses to control order - conditions/items in the parantheses will solve/run first.


##### Control order of evaluation with precedence

- understand how operators are prioritized and add parantheses to make evaluation order explicit when needed.
- Think of this like basic math rules you already know. When you write an expression with multiple operations, not everything is done left to right—some operations have higher priority than others. This is called operator precedence.
- Like - 2 + 3 × 4
- You might think - (2 + 3) × 4 = 20
- But actually, multiplication happens first: 2 + (3 × 4) = 14

- Why parentheses help
- Parentheses let you control the order explicitly (clearly and directly stated, leaving no room for guessing), so there’s no confusion.
- Default behavior - 2 + 3 × 4 = 14
- With parantheses - (2 + 3) × 4 = 20

- ex - this example here shows you how parantheses changes the result -
`
print(2 + 3 * 4)
print((2 + 3) * 4)
print(true || false && false)
print((true || false) && false)
`

##### Boolean Precedence

- `&&` is evaluated before `||`. Use Parantheses to clarify intention.

- ex. -
`
let a = true
let b = false
let c = true

print(a || b && c) // true (&& before ||)
print((a || b) && c) // true 
print(a && b || c) // true ((a && b) || c)
`


### Strings

- Strings are basically text.
- Use `+` to join, interpolation with `\(Value)` to insert values, and properties like `count` and `isEmpty` to inspect them.

#### Basics

- create, combine and inspect strings with concatenation, interpolation, and common properties.

- ex - here, our example shows concatenation, interpolation, `count` and `isEmpty` attribute.
`
let s1 = "Hello"
let s2 = "World!"

print(s1 + " " + s2) // string conccatenation
print("\(s1), \(s2)") // stringinterpolation

let word = "John"
print(word.count) // count attribute of String
print(s1.isEmpty) // false - because s1 has a value
`

#### Substring and Case

- get String's substrings with indices. 
- Uppercased/lowercased creates new strings without changing the original.
- ex. -
`
let text = "World!"
let start = text.startIndex
let end = text.index(start, offsetBy: 3)
let sub = text[start..<end] // Wor

print(sub)
print(text.uppercased())
`

- here, the `..<` is the ..< operator, and it mean → exclude the end. Whereas, the opposite of it is the `...` operator, which mean → include the end.


#### Concatenation

- Concatenation means to join strings with `+`, or use interpolation to insert values into a string.

- You can also use `+` to make a new string. When you use interpolation to insert values in a string, it'll insert the values inline - without linebreak or new line.
- Note that, Interpolation is often clearer when mixing text and values.

- ex - 
`
let first = "Hello"
let second = "World!"

// Concatenation
print(first + " " + second)

// Interpolation
print("\(first), \(second)")
`

##### Append Strings

- You can use `+=` to append to a mutable string.

- ex -
`
var s = "Hello"
s += ", World!"
print(s)
`


#### Numbers and Strings

- You can use string interpolation to mix numbers with text.
- Convert numbers to strings explicitly with `String(value)` when concatenating.

##### Mix Text and Numbers

- Use interpolation to embed numbers directly in strings, or convert numbers with `String(value)` when concatenating.

- ex. - here, we show interpolation and explicit with `String()`
`
let age = 5
print("Age: \(age)") // interpolation

let text = "You are " + String(age) // using String(value) to change the numerical value to String - type casting
print(text)

let pi = 3.14
print("Pi: \(pi))
`

##### Convert String to Number

- Use numeric initializers like `Int("123")` which returns optionals because conversion can fail.

- ex - here, we convert string digits to numbers and handle failed conversions with optionals.
`
let s1 =  "123"
let n1 = Int(s1) // Int?
print(n1 ?? 0) // it says, to print value of n1 if there's value in n1, else print 0. - just a simple if...else clause

let s2 = "abc"
let n2 = Int(s2) // nil (not a number)
print(n2 == nil)
`

- here, "123" is a string, which we try to covnert to a number/Int with Int(s1).
	- print(n1 ?? 0) - here, ?? is the nil-coalescing operator - which basically means - If this value is nil(0), use a default instead.

	- the idea is - value ?? defaultValue 
	- if value is not nil -> use it
	- if value is nil -> use defaultValue

	- for ex. - `let name: String? = nil`
	- `let displayName = name ?? "Guest"`
	- but since name is nil, this becomes -
	- `displayName = "Guest"` - here, Guest is the defaultValue

	- without ??, we'd have to write a much longer if...else clause and conditions. But with ??, we can simply write - `print(score ?? 0)`
	- So, in simple terms, the nil-coalescing operator is a shortcut for providing a fallback value when something is missing(nil).

	- continuing with the above example - `n1 = Optional(123)`
	- Notice Int(s1) returns Int? - an optional. That means, it might contain a number or a nil.

	- Second part of the example is -
	- let s2 = "abc"
	- let n2 = Int(s2) // nil(not a number)
	- print(n2 == nil)

	- here, s2 is 'abc', which is not a number
	- Int(s2) fails -> so: `n2 = nil`
	- Then, `print(n2 == nil)` - this checks whether n2 is nil. Since it is, so it prints - true.



#### Special Characters

- You can use escape sequences inside strings - `\n`(newline), `\t`(tab), `\"`(quote), `\\`(backslash).

##### Escapes

- Escape special characters with backslashes to represent newlines, tabs, quotes, or backslashes themselves.

- ex. -
`
print("Hello\nWorld!")
print("A\tB\tC")
print("\"quoted\"")
print("\\")
`

##### Multiline Strings

- You can use triple quotes `"""` for multiline string literals. 
- Indentation before closing quotes is ignored.

- ex. -
`
let poem = """
Roses are red,
Violets are blue.
"""
print(poem)
`


#### Unicode & Scalars

- Swift strings are Unicode-correct.
- A single character can be composed of multiple Unicode scalars.
- Visually identical strings can compare equal.


##### Composed Characters

- Some characters are made from multiple Unicode Scalars - Swift treats them as a single character for comparison and length.

- ex. - here, the example shows that a precomposed character and a composed sequence are considered equal in Swift.
`
let e1 = "e"
let e2 = "e\u{301}" // e + COMBINING ACUTE ACCENT

print(e1 == e2)
print(e2)
`


#### Unicode Scalars

- Inspect the underlying Unicode scalar values with the `unicodeScalars` view.
- The `unicodeScalars` view yields values of type `UnicodeScalar`.

- ex. - here, this example prints the Unicode scalar code points that make up the character.
`
let s = "e\u{301}"
for scalar in s.unicodeScalars{
	print(scalar.value) // 101, 769
}
`



### Arrays

- arrays store ordered collection of values/data of the same type.
- Arrays are value types and copy on write.

- basically it's saying - “Arrays are value types” - here, a value type mean - When you assign it to another variable, you get a separate copy, not a shared object.

- Ex:
`
var a = [1, 2, 3]
var b = a
`

- here, it might look like a and b are the same—but conceptually:
	- a has its own data - array 1
	- b has its own data - pointing to array 1 till b's array's value changes

- now, if we add a value to one of these array :

`b.append(4)`

- it'll lead to - 
`
a = [1, 2, 3]
b = [1, 2, 3, 4]
`

- It shows that changing b does not affect a.

- The other thing - “Copy on write” means - Swift does NOT immediately makes a full copy when you do - `var b = a`.
- Instead, both a and b temporarily share the same data in memory, Swift waits until one of them is modified,then it creates a new array for the modified variable's array. When that happens, only then does it make a real copy.

- So if - 
`
var a = [1, 2, 3]
var b = a   // no real copy yet (shared behind the scenes)
`

- Then we do:
`b.append(4)`

- Now Swift says: “Oh, you're modifying b, I need to protect a.”

- So it - creates a copy for b and then modifies b.

- So ultimately, Arrays behave like independent copies, but Swift delays actually copying them until one is changed to save memory and speed things up.


#### Create and Access

- You can create arrays using two ways - literals and initializers.
- A literal here mean you directly write the values of the array inside square brackets - LITERALLY

- ex of literals -
`
let nums = [1, 2, 3]
let names = ["John", "Joe"]

`

- On the other hand, initializers are special method used to create an array, often when you need more control over it.

- ex of initializers -
`
// empty array
let nums = [Int]() // it will take int values only

// array with repeated values
let zeroes = Array(repeating: 0, count: 5) // [0, 0, 0, 0, 0]
`

- And you can access array's elements by their index numbers and use properties like `count` and `isEmpty` on them.

- ex. - here, our example creates an array, access its items, appends elements to it and inspects its properties.
`
var nums = [1, 2, 3]
print(nums[0]) // 1

nums.append(10)
print(nums.count) // 4
print(nums.isEmpty) // false
`

- Tip: Arrays are value types. 
	- Mutating a copy will not affect the original copy (copy-on-write semantics.)


#### Create and Access

- You can modify arrays by inserting and removing elements from them.

- ex. -
`
var items = ["A", "B", "C"]
items.insert("X", at: 1)
print(items)

items.remove(at: 2)
print(items)
`


#### Loop Through an Array

- You can use `for-in` to loop values.
- You can also use `enumerated()` for index and value.

- To loop through an Array's elements/values, you can use `for-in` or you can use `enumerated()` when looping through index and values.

- ex. - here, we use for-in loop. We also use enumerated() to get the array's index and values.
`
let fruits = ["Apple", "Banana", "Cherry"]
for fruit in fruits{
	print(fruit)
}

for (i, fruit) in fruits.enumerated(){
	print("\(i): \(fruit)")
}
`

##### forEach

- You can use `forEach` for a functional style loop. It reads the array's values but it cannot use `break/continue`.

- ex - 
`
let fruits = ["Apple", "Banana", "Cherry"]
fruits.forEach { print($0) }
fruits.enumerated().forEach{ print("\($0.offset): \($0.element) ") }
`

- here, in this line - fruits.forEach{ print($0) } mean -

	- forEach means: do something with every item in the array
	- { ... } is a closure (a small block of code)
	- $0 means: the current item

	- So, its basically saying - for each fruit in fruits -> print it

- on the other hand, this line - fruits.enumerated().forEach { print("\($0.offset): \($0.element) ") } mean -
	
	- here, we add index numbers to out array items.
	- enumerated() - turns the array into pairs like (0, "Apple"), (1, "Banana"), (2, "Cherry")
	- Each item now has - offset -> the index (0, 1, 2)
	- element -> the value ("Apple", etc.)

	- inside the loop -
		$0.offset // index
		$0.element // actual fruit
	
	- so ths line prints -
		0: Apple
		1: Banana
		2: Cherry
	
	- so basically, $0 - means the current item of the loop
	- `enumerated()` - gives you the index + value together



#### Array Slices


- You can use ranges to create slices of arrays.
- A range is a half-open interval, meaning, it includes the lower bound (starting point) but excludes the upper bound (end point).
- A slice is a view of an array that shares storage with the base array, meaning is is a reference to a portion of the array.
- When you modify a slice, the base array is also modified.


##### Slicing an Array - ArraySlice

- create an `ArraySlice` with a range on an array.
- You can also Convert to `Array` if you need its own storage.

- ex. -
`
let nums = [1, 2, 3, 4, 5, 6, 7, 8]
let mid = nums[1...4] // ArraySlice<Int>
print(mid) // [2, 3, 4, 5]

let copy = Array(mid) // Array<Int>
print(copy) 
`

- or, you can also use a half-open range to exclude the upper bound.

- ex -
`
let nums = [1, 2, 3, 4, 5, 6, 7]
let slice = nums[1..<3] // indices 1 and 2 only
print(slice)
`

- slices shares storage with the base array until you copy the slice -> Then it becomes its own array at a new location.

- Tip: Slices keep original indices.
	- Convert to `Array` for zero-based indices.


##### One-Sided Slices

- you can use one-sided ranges to slice from the start or to the end.

- ex. -
`
let arr = [0, 1, 2, 3, 4, 5]
print(arr[...2]) // first three elements (0...2)
print(arr[2...]) // from index 2 to the end
`


#### Indices & Bounds

- Arrays have `startIndex` and `endIndex` (one past last).
- You can use `indices` to loop valid positions.
- Note that, Out of bounds access crashes at runtime.

##### Valid Indices

- You can use `indices` to visit only valid positions.

- ex. -
`
let items = [1, 2, 3]
print(items.startIndex) // 0

for i in items.indices{
	print("index: \(i), value: \(items[i])")
}
`

- valid subscript indices: `0..<items.count` (zero up to, not including count).

- ex. -
`
let items = [1, 2, 3]
print(items[0]) // OK
// print(items[3]) // out of bounds
`

- Use `indices` for index-and-value access without `enumerated()`.

- Note: `endIndex` is not a valid subscript. The last valid index is `items.index(before: items.endIndex)`.


##### Last Valid Index

- You can get the last valid index with `index(before: endIndex)`.

- ex -
`
let items = [1, 2, 30]
let lastIndex = items.index(before: items.endIndex)
print(lastIndex) // 2
print(items[lastIndex]) // 30
`


#### Multidimensional Arrays

- You can use nested arrays to represent 2D (or higher) structures such as matrices and grids.

##### 2D Arrays

- You can store rows as arrays inside and outer array, then, index as grid[row][col] to access items.

- ex. -
`
var grid = [
	[1, 2, 3],
	[4, 5, 6],
	[7, 8, 9]
]

print(grid[0][1]) // 2
for row in grid{
	print(row)
}
`

##### Update a Cell

- You can change a value by indexing into the specific row and column.

- ex. -
`
var grid = [
	[1, 2, 3],
	[4, 5, 6],
	[7, 8, 9]
]

grid[1][1] = 50
print(grid[1]) // [4, 50, 6]
print(grid[1][1]) // 50
`


#### Real-Life Examples

- Arrays are everywhere - rendering lists, aggregating values, finding items, and transforming data.

##### Aggregate and Transform

- Here, we use `filter`, `map`, and `reduce` to process arrays declaratively.

- ex. -
`
let scores = [50, 44, 56, 76, 87, 98]
let passed = scores.filter{ $0 >= 75 }
let curved = passed.map{ $0 + 5 }
let average = curved.reduce(0, +) / curved.count

print(passed)
print(curved)
print("Average: \(average)")
`

- Filter to keep passing sources, map to apply a curve, then, reduce to compute an average.

- Tip: Prefer declarative iteration for clarity and fewer bugs.


##### Search & Index

- Check for membership and find the index of a value.

- ex. -
`
let names = ["Kai", "John", "Joe"]
print(names.contains("John")) // true

if let i = names.firstIndex(of: "Joe"){
	print(i) // 2
}
`


### Ranges

- You can use ranges to express a sequence of values.
- `a...b` is a closed range including both ends - it includes both ends.
- `a..<b` is a half-open range up to but not including the end - `b`.


#### Closed and Half-Open

- Use `a...b` for closed ranges (inclusive) and `a..<b` for half-open ranges (exclusive upper bound).

- ex. - this example here iterates over closed and half-open ranges and checks membership with `contains()`.
`
for n in 1...5{
	print(n) // 1, 2, 3, 4, 5
}
	for n in 1..<5{
		print(n) // 1, 2, 3, 4
	}
	let r = 10...12
	print(r.contains(11)) // true
	print(r.contains(13)) // false
`

#### One-Sided Ranges

- one sided ranges omit one end: `...b` starts from the beginning, and `a...` goes till the end.

- ex. - this example slices an array using one sides ranges: upto and including index `2`, and from index `2` to the end.
`
let arr = [0, 1, 2, 3, 4, 5]
print(arr[...2]) // first 3 elements (indices 0...2)
print(arr[2...]) // from index 2 to the end
`


### If...Else

- You can use if...else if and else to control the flow of your program.
- You can also combine conditions with logical operators.


#### Basic If...Else

-  Use `if` to run code when a condition is true.
- Add `else` for the false case, and `else if` for multiple branches.

- ex. - here we see an example that prints a letter grade based on the `score`.
`
let score = 90
if score >=90{
	print("A")
} else if score >= 80{
	print("B")
} else {
	print("C or lower")
}
`

- Tip: Note that, Swift conditions must be `Bool`.
	- Also, there is no implicit conversion from integers to booleans.


##### Even or Odd

- Use `else` to handle the alternate outcome.
- eg- 
`
let n = 7
if n % 2 == 0{
	print("Even")
} else {
	print("Odd")
}
`


#### If

- Execute code conditionally when an expression evaluates to `true`.

##### Basic if

- `if` condition runs code only when a condition evaluates to `true`.
- eg. -
`
let temp = 25
if temp > 20 {
	print("Warm")
}
`

##### Threshold Check

- Trigger an action when a value exceeds a threshold.
- eg. -
`
let speed = 55
if speed > 50 {
	print("Slow down")
}
`

#### Else

- Use `else` to handle the false branch of a condition - which runs only when the if or else if statement fails.


##### Handle the false branch with else

- Use `else` to run an alternate block when the condition is false.
- eg.-
`
let hasAccess = false
if hasAccess {
	print("Welcome")
} els {
	print("Access denied")
}
`

##### Age Gate

- use `else` to handle when a user does not meets a requirement.
- eg. -
`
let age = 16
if age >= 18 {
	print("Access granted.")
} else {
	print("Access denied.")
}
`

#### Else If

- We can chain multiple conditions with `else if` for more than two branches.

##### Branch with else if conditions

- Use `else if` for additional conditions when the first ` is false.
- ex. - this example evaluates multiple ranges using chained `else if` clauses.
`
let score = 72
if score >= 90 {
	print("A")
} else if score >= 80 {
	print("B")
} else if score >= 70 {
	print("C")
} else {
	print("D")
}
`

- ex 2 - Here, we use multiple `else if` branches to categorize values.
`
let t = 0
if t <= 0 {
	print("Freezing")
} else if t < 10 {
	print("Cool")
} else {
	print("Pleasant")
}
`

#### Short Hand If...Else

- We can use the ternary operator `condition ? a : b` for concise conditional expressions.

##### Basic Ternary Operator 

- Use the ternary operator to choose between two values in a single expression.
- ex. - here, we see this example that returns  "Adult" when `age >= 18` otherwise, it returns "Minor"
`
let age = 20
let status = (age >= 18) ? "Adult" : "Minor"
print(status)
`

##### Choose the Minimum

- We can use a ternary operator to select the smaller of two values.
- ex. - here, we see an example that prints the smaller number
`
let a = 5, b = 9
let min = (a < b) ? a : b
print(min)
`

- here, if `a` is not less than `b`, the expression returns `b`.


#### Nested If

- Nest `if` statements to check multiple levels of conditions.

##### Use nested conditions for multi-step checks

- use nested conditions to handle layered checks, such as authentication then assign role.
- ex. -
`
let isLoggedIn = true
let isAdmin = true

if isLoggedIn {
	if isAdmin {
		print("Admin access granted.")
	} else [
		print("Limited access")
	]
}
`

- use nested conditions to handle layered checks, such as authentication then role.

##### Validate and Branch

- Validate inputs first, then use a nested `if` to branch inside the valid case.
- ex. -
`
let score = 85
if score >= 0 && score <= 100{
	if score >= 90 {
		print("A")
	} else if score >= 80{
		print("B")
	} else if score >= 70 {
		print("C")
	} else {
		print("D")
	}
} else {
	print("Invalid score")
}
`

#### If with Logical Operators

- combine conditions with `&&`, `||` and negate with `!`.

##### Combine conditions with logical operators

- use AND, OR, and NOT to build complex conditions that control code paths.
- ex - 
`
let isMember = true
let hasCoupon = false

if isMember || hasCoupon {
	print("Discount applied")
} else {
	print("No discounts")
}
`

##### AND and NOT

- combine conditions with `&&` and negate with `!`.
- ex. -
`
let isMember = true
let expired = false

if isMember && !expired{
	print("Active member")
} else {
	print("Non-active member")
}
`


#### Real Life Examples

- here, we apply conditional logic to real situations like validation, feature flags, or permissions.

- ex. - here, we use conditions to validate input and guard against empty or invalid values.
- ex. -
`
let input = "hello"
if !input.isEmpty{
	print("Input received: \(input)")
}
`
- when the input is empty, the code inside the condition is skipped.

- ex. 2 - here, we create a feature flag example - where, we gate a feature behind a flag and a user group.
`
let enabled = true
let userGroup =  "beta"

if enabled && userGroup == "beta" {
	print("Show feature")
}
`



### Switch

- Use `switch` to match a value against patterns.
- In Swift, a switch must list every choice, and it stops checking more choices after the first match is found.


#### Basic Switch

- Match integer ranges and exact values.
- Add `default` to handle remaining cases.

- ex. - here, this example categorizes a score using ranges in `switch`.
`
let grade = 92
switch grade {
	case 90...100:
		print("A")
	case 80..<90:
		print("B")
	case 70..<80:
		print("C")
	default:
		print("Below C")
}
`

- Note: Swift `switch` must be exhaustive. Use `default` to cover remaining cases.


#### String Switch

- Switch can match strings directly against literal cases.
- ex -
`
let command = "start"
switch command {
	case "start":
		print("Startng")
	case "stop":
		print("Stopping")
	default:
		print("Unknown")
}
`


### While Loop

- repeat code while a condition is true using `while`.
- use `repeat { ... } while` to check the condition after the loop body.

##### while

- the `while` loop checks the condition before each iteration.
- ex. - this example here, counts down from 3 using a `while` loop.
`
var n = 3
while n > 0 {
	print(n)
	n -= 1
}

print("Liftoff!")
`

##### repeat {} while

- `repeat` runs the body first, then checks the condition.
- ex. - this example here, demonstrates `repeat` (do-while style)
`
var attempts = 0
repeat {
	attempts += 1
	print("Attempt #\(attempts)")
} while attempts < 3
`

- Tip: Avoid infinite loops. Ensure the loop condition will eventually become false, else you'll be caught in an infinite loop.


#### Repeat/While Loop

- use `repeat { ... } while condition` to run the body at least once.

##### Repeat/while Loop Example

- this example here uses a repeat/while loop to print "Try #1" and "Try #2".
- ex. - this example here, demonstrates `repeat` (do-while style).
`
var attempts = 0
repeat {
	attempts += 1
	print("Attempt # \(attempts)")
} while attempts <= 5
`

- Tip; Avoid infinite loops. Ensure the loop condition will eventually become false.


##### Runs once even if the Condition is False

- Because `repeat` checks the condition after the body, it executes at least once.
- ex. -
`
var n = 0
repeat {
	print("Runs once")
} while n > 0
`

#### Real Life Examples

- use loops to retry operations, poll statuses, or process queues carefully with exit conditions.

#### While Loop from 3 to 1

- Counts down from 3 to 1
- ex.-
`
var remaining = 3
while remaining > 0 {
	print("Remaining: \(remaining)")
	remaining -= 1
}
`

#### Poll Until Success

- repeat an action with a cap on attempts until a condition is met.
- ex. -
`
var attempts = 0
var success = false

while !success && attempts < 5{
	attempts += 1
	print("Checking... #\(attempts)")

	if attempts == 3{
		success = true
		print("Success")
	}
}
`


### For Loop

- use `for-in` to iterate over ranges, arrays, dictionaries, and other sequences.

#### Iterate a Range

- Use a range to loop a fixed number of times.
- ex - this example iterates from 1 to 3 inclusive.
`
for i in 1...3{
	print(i)
}
`

#### Iterate an Array

- loop through an array with `for-in` or `enumerated()` to access index and value.
- ex - 
`
let nums = [10, 20, 30]
for n in nums{
	print(n)
}

for (index, value) in nums.enumerate(){
	print("index: \(index), value: \(value)")
}
`

- use `enumerated()` to get index and value together.

- Tip: Prefer `for-in` over manual index loops when you do not need the index.


#### Nested Loops

- we can place a nested loop inside another loop to generate combinations or matrices.


##### Generate Combinations with Nested Loops

- use inner and outer loops to produce pairs or grids from ranges and collections.
- ex. -
`
for i in 1...2 {
	for j in 1...3{
		print(i, j)
	}
}
`


##### Multiplication Table

- use nested loops to build a small multiplication table.
- ex. -
`
for i in 1...3{
	var row = ""
	for j in 1...3 {
		row += "\(i * j)"
	}

	print(row)
}
`


#### For-Each Loop

- use `forEach` to iterate sequences with a closure.
- in Swift, a closure is a self-contained block of code that you can pass around and use in your program. Think of it as a function without necessarily giving it a name.
- ex. -
`
let greet = { (name: String) -> String in
	return "Hello, \(name)!"
}

- here, `greet` is a closure.

print(greet("Alice"))
`

##### Iterate with forEach closures

- Pass a closure to `forEach` to process each element of a sequence.
- ex. -
`
["A", "B", "C", "D", "E"].forEach { print($0) }
`


##### Enumerated forEach

- use `enumerated()` with `forEach` to get index and value.
- ex. -
`
let items = ["A", "B", "C", "D", "E"]
items.enumerated().forEach { print("\($0.offset): \($0.element)") }
`


#### Real-Life Examples

- in Swift, we can use loops to process arrays, paginate data, or aggregate results.

##### Process arrays and aggregate results

- loop over a collection and accumulate values to compute totals like sums or averages.
- ex. -
`
let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
var sum = 0
for n in numbers { sum += n }
print(sum)
`

##### Filter Even Numbers

- filter a collection to keep only the values you need.
- ex. -
`
let numbers = [1, 2, 3, 4, 5]
let evens = numbers.filter { $0 % 2 == 0 }
print(evens)
`

### Break/Continue

- use `break` to exit a loop, and `continue` to skip to the next iteration.

#### break

- stop the loop immediately when a condition is met.
- ex - here, the example stops printing when `i` reaches 4.
`
for i in 1...10 {
	if i == 4 { break }
	print(i)
}
`

#### continue

- skips the rest of the current iteration but keep looping.
- ex. - here, this example prints only the odd numbers using `continue.`
`
for i in 1...5 {
	if i % 2 == 0 { continue }
	print(i) // only prints the odd numbers
}
`

Tip: Prefer clear conditions and early exits to reduce nested branches.


### Collections

- use arrays, dictionaries, and sets to store ordered lists, key-value pairs, andd unique items.

#### Arrays

- Arrays store ordered lists of values.
- Syntax: `[Type]` for type, append with `.append`, count with `.count`, access with `array[index]`.
- ex. - here, this example creates an `[Int]` array, appends a value, reads the count, and accesses the first element.
`
var nums: [Int] = [1, 2, 3, 4, 5]
nums.append(6)
print(nums.count) // 6
print(nums[0]) // 1
`

##### Dictionaries

- Dictionaries store key-value pairs.
- Syntax: `[Key: Value]` for type, assign with `dict[key] = value`, read with `dict[key] ?? default`.
- ex. - here, this example defines a `[String: Int]` dictionary, inserts a key, and reads with nil-coalescing.
`
var ages: [String: Int] = ["Kai":30]
ages["Eliza"] = 21
print(ages["Kai"] ?? 0)
`

#### Sets

- Sets store unique items.
- Syntax: `Set<Element>` or literal, test membership with `.contains`.
- ex. - here, this example creates a `Set` which duplicates values, and checks membership with `contains`.
`
var letters: Set<Character> = ["A", "B", "C"]
print(letters.contains("C")) // true
`

- Notes: Arrays preserve order and allow duplicates. Sets store unique values. Dictionaries map keys to values.


#### Sets

- Sets store unique values with no defined order.
- Test membership with `contains`, and use union/intersection operations.

##### Deduplicate Values

- Use sets to deduplicate values from an array.
- ex. - here, this example creates a `Set` which deduplicates values and checks membership.
`
var letters: Set<Character> = ["A", "B", "A"]
print(letters.contains("A"))
`

##### Set Operations

- Combine or compare sets using `union`, `intersection` and `subtracting`.
- ex. -
`
let a: Set<Int> = [1, 2, 3]
let b: Set<Int> = [3, 4]
print(a.union(b).sorted)() // [1, 2, 3, 4]
print(a.intersection(b).sorted()) // [3]
print(a.subtracting(b).sorted()) // [1, 2]
`

- here, in this example, it shows how to use set operations to combine or compare sets:
	- `union` - combines sets
	- `intersection` - finds common elements
	- `subtracting` - removes common elements


#### Dictionaries

- Dictionaries store key-value pairs.
- Lookups are fast by key.
- Use subscripting to read and write values.

##### Basics

- ex. - here, this example adds and reads values using dictionary subscripting.
`
var ages: [String: Int] = ["Kai": 30]
ages["Eliza"] = 21
print(ages["Kai"] ?? 0)
`

##### Iterate Keys and Values

- Loop through a dictionary to access keys and values.
- ex.-
`
let ages = ["Kai": 30, "Eliza": 21]
for k in ages.keys.sorted(){
	print("\(k) : \(ages[k]!)")
}
`


#### map, filter, reduce

- Transform and aggregate collections with `map`, `filter`, and `reduce`.

##### Transform and Aggregate with map/filter/reduce

- use `map` to transform elements, `filter` to select a subset, and `reduce` to combine into a single result.
- ex. -
`
let nums = [1, 2, 3, 4, 5]
let doubled = nums.map { $0 * 2 }
print(doubled)

let evens = nums.filter { $0 % 2 == 0 }
print(evens)

let sum = nums.reduce(0, +)
print(sum)
`

##### Convert and Sum

- use `compactMap` to convert valid strings to numbers, then `reduce` to sum.
- ex. -
`
let raw = ["1", "2", "a", "3", "4", "z", "5"]
let ints = raw.compactMap { Int($0) } // [1, 2, 3, 4, 5]
let total = ints.reduce(0, +)
print(total)
`


#### Sorting

- SOrt arrays with `sorted()` (returns new) or `sort()` (in-place sorting without returning anything new). Provide a closure for custom order.
- Sort ascending using `sorted()` and descending in-place using `sort(by:)`.
- ex. - here, this example sorts ascending using `sorted()` and descending in-place using `sort(by:)`.
`
var nums = [3, 2, 1]
let ascending = nums.sorted()
print(ascending) // [1, 2, 3]

nums.sort(by: >)
print(nums) // [3, 2, 1]
`

##### Case-insensitive Sort

- Provide a custom closure to sort strings without regard to case (upper or lower case).
- ex. -
`
let names = ["bob", "Alice", "Dave", "kush"]
let caseInsensitive = names.sorted { $0.lowercased() < $1.lowercased() }
print(caseInsensitive) // ["Alice", "bob", "Dave', "kush"]
`


#### Mutability (let vs var)

- Use `let` for constants and `var` for variables.
- Arrays and dictionaries declared with `var` can be modified in-place.

##### Mutable vs Immutable

- Declare with `var` when you intend to add/remove elements, and use `let` to prevent mutations and make elements constants.
- ex. -
`
let fixed = [1, 2]
print(fixed.count) // 2
var bag = [1, 2]
bag.append(3)
print(bag.count) // 3
`

##### Dictionary Mutability

- Mutate dictionaries declared with `var` by inserting or updating keys.
- ex.-
`
var user = ["name":"Kai"]
user["city"] = "London"
print(user.count)
`


#### Collection Protocols

- Arrays, Sets, and Dictionaries conform to `Sequence` adm `Collection`, which provide common APIs like `count`, and `isEmpty`.

##### Common APIs

- Use `count` and `isEmpty` to check collection size.
- ex. - here, this example shows shared operations exposed via collection protocols.
`
let arr = [1, 2, 3]
print(arr.count) // 3
print(arr.isEmpty) // false

let s: Set<Int> = [1, 2, 3]
print(s.contains(2)) // true
print(s.isEmpty) // false
`

##### Indices

- Use the `indices` property to iterate valid positions.
- ex. -
`
let arr = [10, 20, 30]
for i in arr.indices {
	print("index: \(i), value: \(arr[i])") // 1:10, 2:20, 3:30
}
`


## Swift Types & Functions

### Functions

- With functions, you can define reusable code with parameters and return values; control labels, mutation with inout, defaults, and variadics.

#### Defining and Calling Functions

- use `func` to define a function with a name, parameters, and return value.
- syntax -
	- `func name(param: Type) -> Return`
	- call with `name(param:)`

- ex - this example here, defines a function named `greet` that takes a `String` parameter and returns a greeting message.
`
func greet(name: String) -> String {
	return "Hello, \(name)!"
}

print(greet(name: "Swift"))
`

#### Parameters and Return Values

- Use `func` to define a function with multiple parameters and a return value.
- syntax - 
	- `func name(param1: Type, param2: Type) -> Return`
	- Multiple params - seperate by commas; annotate types (denote types)
	- Parameter labels - External names shown at call sites; use `_` to omit.
	- Return type - Use `->`; omit for `Void`.

- ex. - here, this example omits the external parameter labels with `_` and returns the sum as an `Int`.
`
func add(_ a: Int, _ b: Int) -> Int { a + b }
print(add(2, 3))
`

- here, the leading `_` before each parameter means no external parameter name is required when calling the function.
- in Swift, function parameters can have two names
	- an external name used when calling the funcction
	- a local name used inside the function body
- ex. -
`
func add(first a: Int, second b: Int) -> Int {
    a + b
}
`
- here, first and second both are teh external names.
- a and b are the local/internal names
- So, we must call it like this -
`
add(first: 2, second: 3) - 2 and 3 are value of a nad b, and first and second are their positions, basically.
`
- and, when we write `_`, it means the function has no external names
- ex. -
`
func add(_ a: Int, _ b: Int) -> Int {
    a + b
}
`
- so, the funciton is called like this -
`
add(2, 3)
`
- instead of -
`
add(a: 2, b: 3)
- think of `_` in Swift, as telling Swift that - Dont require a label for this argument when the function is called.
- Rule of thumb -
	- Use labels when they make the call read like a sentence:
		- `move(from: start, to: end)`
	- Use `_` when the meaning is obvious from the function names:
		- `add(2, 3)
			max(10, 20)`


#### Inout, Default Values, and Variadics

- Use `func` to define a function with multiple parameters and a return value.
- syntax - 
	- `func name(param: inout Type, default: Type = value)`
	- `func name(param: Type...)`

- ex. - here, this example modifies a value in place using `inout`, supplies a default parameter, and sums a variadic list.
`
func increment(_ value: inout Int, by step: Int = 1){
	value += step
}

var x = 10
increment(&x)
print(x) // 11

func sum(_ nums: Int...) -> Int { nums.reduce(0, +) }
print(sum(1, 2, 3))
`

- `inout`
	- normally, function parameters are constants inside the function. You can read them but not modify the original variable that was passed in.
		- for ex. - `
			func addOne(_ value: Int){
				// value += 1 // Error
			}
		`

	- however, with `inout`, Swift lets the function modify the caller's variable directly.
		- ex. - `
			func increment(_ value: inout Int){
				value += 1
			}
		`
	- think of `inout` as - Pass the variable itself, not just a copy of its value.

- default value
	- `by step: Int = 1`
	- here, the =1 means, if no value is supplied for `step`, use 1.
	- so, these are equivalent - `increment(&x)` and `increment(&x, by: 1)`.
	- note that, the `&` is required for `inout` parameters. -  it tells Swift - Allow this function to modify `x`.

- sums function
	- a Variadiac parameter (here, its - func sums(_ nums: Int...)) accepts zero or more `Int` values.
	- So, with variadiac parameter, you can call sum(), or sum(1), or sum(1, 2, 3, 4, 4) and it wont be error, because inside the function, Swift collects them into an array.

	- so, sum(1, 2, 3), Swift makes it - nums==[1, 2, 3]

- reduce 
	- the code body is -nums.reduce(0, +)
	- `reduce` combines all elements into a single value - so, when the syntax is - `array.reduce(initialValue, operation)`, here, `nums.reduce(0, +)` means - start with `0` (value), and add each element after that from the array.
	- so for [1, 2, 3] -> Swift performs -> 0+1 = 1, 1+2 = 3, 3+3 = 6

- so basically - inout -> allows the function to modify the caller's variable.
- &x -> is required when passing an inout argument.
- =1 -> default value for step.
- ... -> variadic parameter (accepts any number of `Int` s)
- inside the function, `nums` is an array.
- reduce(0, +) -> adds all elements together.



### Optionals

- With Optionals, we can represent misssing values safely, and unwrap them with  `??`, `if let`, or `guard let`.


#### What are Optionals?

- An Optionals is a type that can hold either a value or `nil` (no value).
- Use `?` to declare an Optional, and nil-coalescing (`??`) or binding (`if let`) to safely read it.
- Optionals are one of the languages' most important features, they allow a variable to either -
	- hold a value of a specific type, or
	- hold nil(meaning 'no value')

- syntax - 
	- `var x: String?`
	- `x ?? "default"`
	- `if let v = x { ... }`
	- `guard let v = x else { return }`

- ex. - here, this example prints a default using `??` and unwraps an Optional safely with `if let`.
`
var nickname: String? = nil
print(nickname ?? "(none)")

nickname = "Ace"
if let name = nickname {
	print(name)
}
`

- Tip: Use `guard let` inside functions to early-exit on missing values.

- Why do optionals exist?
- imagine you're getting a user's middle name. not everyone has a middle name, so this value may or may not exist.
- Without optionals, you might use an empty string:
- `var middleName: String = ""`

- But:
	- Does `""` mean the person has no midddle name?
	- Or is it a real value that happens to be empty?
- Swift solves this by allowing the variable to be optional:
- `var middleName: String?`

- this means - "middleName can contain a String, or it can obtain nil."

- Syntax -
- `var x: String?`
	- the `?` here, means that variable is optional.
 
- `var x: String?`
	`print(x)`
	- here, the output will be `nil`, because we have put `String?`(optional) as type.

- Later, `x = "Hello"`
		`print(x)`
- output - `Optional("Hello")`
- internally, Swift treats this as - either:  `a String value`, or `nil`

- What is nil?
- `nil` means there is currently no value on this variable.
- ex -
`
var age: Int? = nil
`

or 
`var age: Int?`
- both mean and does the same thing.

- the problem is that you cannot use na Optional directly.
- lets say, `var x: String? = "Hello"`
- you cannot do - `print(x.count)`
- Swift will give an error on this - that String? must be unwrapped.
- because, Swift sees - x might be - "Hello" or nil, but not both, so there cant be a count. So, Swift will want you to unwrap the optional first.

- what is nil-coalescing operator(`??`)?
- syntax - `x ?? "default"`
- meaning - if x has a vlaue, use it. Otherwise, use the default value.
- ex-
`
var name: String? = nil
let result = name ?? "Guest"
print(result)
`
- output - Guest

- When x contains a value?
- `var name: String? = "John"`
- `let result = name ?? "Guest"`
- `print(result)`
- Output - John

- this of it as: `if x != nil {
	use x
} else {
	use default
}

- real example -
`
lt username: String? = nil
print("Welcome \(username ?? "Anonymous")")
`
- output - Welcome Anonymous


- What about Optional Binding with `if else`?
- syntax - `if let  v = x {
	// use v
}
`
- output - Hello

- What happens internally?
- Swift does something similar to -
`
if x != nil {
	let v = x's value
	print(v)
}
`

- ex with nil - 
`
var x: String? = nil
if let v = x {
	print(v)
}
`
- nothing prints because - x == nil

- using Else
`
var x: String? = nil
if let v = x { 
	print("Value: \(v)")
} else {
	print("no value")
}
`
- op - No value

- Why do we use if let/
- when you need to do work only if a value exists.
- ex -
`
let email: String? = "[email protected]"
if let email = email {
	sendEmail(to: email)
}
`

- what about Optional binding with `guard let`?
- syntax - `guard let v = x else {
	return
}
`
- meaning - the value must exist, and if it doesnt, exit immediately (with return).
- ex - 
`
func greet (name: String?) {
	guard let name = name else {
		return
	}

	print("Hello, \(name)")
}
`
- calling the func - `greet(name: "John")`
- output - Hello John

- if name is nil 
- `greet(name: nil)`
- execution - guard fails -> return -> function exits

- why `guard let` is popular?
- without guard, we write code like this -
`
func greet(name: String?) {
	if let name = name{
		print("Hello, \(name)")
	} else {
		return
	}
}
`
- it works, but nesting becomes messy. So, we write with guard -
`
func greet(name: String?){
	guard let name = name else {
		return
	}

	print("Hello, \(name)")
}
`
- with guard, its easier to read and cleaner to write.

- if let - use it when the value is optional nad only needed inside a small block. The unwrapped value exists only inside the braces.
	- `
		if let username = username {
			print(username)
		}
	`
- guard let - use it when the value is required for the rest of the function. The unwrapped value remains availabe after the guard statement as well.
	- `
		guard let username = username else {
			return
		}

		print(username)
		updateProfile(usernamae)
		saveData(username)
	`
- ?? - provides a fallback value.


#### Guard Let

- Use `guard let` for early exit when required values are missing.
- ex -
`
func greet (_ input: String?){
	guard let name = input else {
		print("Missing name")
		return
	}

	print("Hello, \(name)")
}

greet(nil)
greet("Swift")
`


### Enums & Patterns

- Model finits sets of cases with `enum`, add associated values, and match using `switch` with patterns.

#### Basic Enums

- Use `enum` to define a type with a fixed set of cases.
- Syntax - `enum Direction { case north, south, east, west }`

- ex.- here, this example defines an enum of directions and creates a value using a short dot syntax.
`
enum Direction { case north, south, east, west }

let d: Direction = .east
print(d)
`


#### Associated Values

- Attach data to each case using associated values.
- syntax - `enum Result { case success(T), failure(Error) }`

- ex - here, this example shows a barcode which may be a UPC with four integers or a QR code with a string.
`
enum Barcode {
	case upc(Int, Int, Int, Int)
	case qr(String)
}

let b1 = Barcode.upc(8, 85909,  51226, 3)
let b2 = Barcode.qr("Hello")
`

#### Pattern Matching

- Use `switch` with patterns to extract associated values.
- syntax -
	- `switch value { case .case(let x): ... }`
	- `if case` for single-case checks

- ex - here, this example uses pattern matching to bind associated values and prints a formatted description:
`
func describe (_ code: Barcode) {
	switch code {
		case .upc(let numberSystem, let manufacturer, let product, let check):
			print("UPC: \(numberSystem)- \(manufacturer)- \(product)- \(check)")
		case .qr(let text):
			print("QR: \(text)")
	}
}

describe(b1)
describe(b2)
`

- the dot syntax (.) in Swift enums is used almost everywhere.
- ex. -
`
enum Barcode {
	case upc(Int, Int, Int, Int)
	case qr(String)
}
`

- here, this enum defines two possible cases -
	- upc
	- qr
- each case can carry associated values.

- creating Enum values
- full syntax -
	let b1 = Barcode.upc(8, 85900, 51226, 3)
	let b2 = Barcode.qr("Hello")
- here, `Barcode.upc(...)` - creates a value of type `Barcode` using the `upc` case.
- the creates a UPC Barcode with -
	- numbersSystem = 8
	manufacturer = 85909
	product = 51226
	check = 3

- the `b2 = BArcode.qr("Hello")` - creates a QR barcode containing - "Hello"

- `func describe(_ code: Barcode){...}`
- this function accepts any `Barcode` value.
- it doesnt know beforehand whether it receives - .upc(...) or .qr(...) - so, it uses a `switch`.

- Pattern Matching with `switch`
- `switch code{...}
- Swift checks which enum case is stored.
- UPC case - 
	- `case .upc(let numberSystem,
				let manufacturer, 
				let product,
				let check):
	-  if `code` is a `.upc`, Swift extracts the four associated values and assigns them to local constants.
	- `numberSystem
		manufacturer
		product
		check`
- for `b1`
	- `.upc(8, 85909, 51226, 3)`
- becomes - 
	-  `numberSystem = 8
		manufacturer = 85909
		product = 51226
		check = 3`
- then, `print("UPC: \(nummberSystem)- \(manufacturer)- \(product)- \(check)")`
- prints - UPC: 8- 85909- 51226- 3

- qr case
- `case .qr(let text):`
- if the barcode is a QR code, Swift extracts the string into `text`.

- for `b2` - `.qr("Hello")` -  becomes - `text = "Hello"` - then - `print("QR: \(text)")` - prints - QR: Hello

- function calls 
- `describe(b1)`
- output - UPC: 8- 85909- 512260 3

- `describe(b2)`
- ouput - QR: Hello

- Why use associated values?
- Without associated values, you might write:
`
struct UPC {
	let numberSystem: Int
	let manufacturer: Int
	let product: Int
	let check: Int
}

struct QR {
	let text: String
}
`

- and then create some wrapper type to hold either one. Swift enums let you model this directly:
`
enum Barcode {
	case upc(Int, Int, Int, Int)
	case qr(String)
}
`
- which means -  A barcode is either a UPC with four integers or a QR code with a string.
- this is an example of a sum type (also called a tagged union or dicsriminated union in other languages).
- a more readable version often labels the associated values:
`
enum Barcode {
	case upc(
		numberSystem: Int,
		manufacturer: Int,
		product: Int,
		check: Int
	)

	case qr(text: String)
}
`
- then you can create values like:
`
let code = Barcode.upc(
	numberSystem: 8,
	manufacturer: 85909,
	product:  51226,
	check: 3
)
`
- which makes the meaning of each value much clearer.



#### Raw Values

- provude default raw values (eg. `Int` or `String`) and initialize from them.
- syntax - 
	- `enum HTTPStatus: Int { case ok = 200, notFound = 404 }`
	- `HTTPStatus(rawValue: 200)`

- ex. - here, this example maps an integer status code back to an enum value using a failable initializer:
`
enum HTTPStatus: Int { case ok = 200, notFound = 404 }

let status = HTTPStatus(rawValue: 200)
print(status == .ok)
`

- Tip: Prefer associated values when each case needs different data; use raw values only when you must map to a primitive like an API code.



### Closures

- Capture values and pass behavior as first-class functions using closure expressions and trailing closure syntax.


#### Closure Expressions

- Closures are self-contained blocks of functionality that can be passed and stored.
- syntax: 
	`
	- `{ (params) -> Return in statements }`
	- shorthand args $0, $1, and type inference
	`
- ex - here, this example sorts numbers using a closure with shorthand arguments and maps them to strings.
`
let nums = [3, 1, 2]
let sorted = nums.sorted { $0 < $1 }
let strings = sorted.map { "#\($0)" }
print(strings) // ["#1", "#2", "#3"]
`


#### Capturing Values

- Closures capture constants and variables from the surrounding context by reference.
- syntax - `func makeCounter() -> () -> Int { var n = 0 ; return { n+= 1; return n } }`

- ex -
`
func makeCounter () -> () -> Int {
	var n = 0
	return {
		n += 1
		return n
	}
}

let next = makeCounter()
print(next()) // 1
print(next()) // 2
`

- the closure remembers `n` between calls, producing an incrementing counter.


#### Trailing Closures

- If the last parameter is closure, you can use trailing closure syntax for readbility.
- syntax - `fn(x) { ... }` instead of `fn(x, closure: { ... })`

- ex. - this example uses trailing closure syntax to pass a block that runs three times.
`
func repeatTimes(_ n: Int, _ work: () -> Void) {
	for _ in 0..<n { work() }
}

repeatTimes(3) {
	print("Hi")
}
`

- Tip: Use shorthand argument names (`$0`, `$1`) and trailing closures for readability.


### Tuples & Type Aliases

- Group values into lightweight records with tuples, and name complex types using `typealias` for clarity.

#### Tuples

- Tuples bundle multiple values into a single compound value without defining a struct.
- syntax - 
	- `let user: (String, Int) = ("Morgan", 30)`
	- labels: `(name: String, age: Int)`

- ex - this example here, creates labeled tuples, accesses fields by name, and destructures into sepreate variables.
`
let user: (name: String, age: Int) = ("Morgan", 25)
print(user.name)
print(user.age)

let http: (code: Int, message: String) = (200, "OK")
let (code, msg) = http
print(code)
print(msg)
`


#### Type Aliases

- Give a readable name to an existing type using `typealias`.
- Syntax -
	- `typealias Completion = (Result<Void, Error>) -> Void`

- ex - this example here defines aliases for a JSON dictionary and a completion closure to make function signature clearer.
`
typealias JSON = [String: Any]
typealias Completion = (Result<Void, Error>) -> Void

func parse(_ data: Data) -> JSON { return [:] }

func save(completion: Completion) {
	completion(.success(()))
}
`

- Tip: Use tuples for small ad-hoc groupings; prefer structs for reusable models.






## Swift Object Model - OOP

### OOP

- Here, we understand the value vs reference sementics with structs and classes, and how copying differs between them.

#### Object-Oriented Programming

- Swift supports object-oriented programming with classes and protocols.
- Object-oriented programming(OOP) is a programming paradigm based on the concepts of "objects" which cna obtain data in the form of fields (often known as attributes or properties), and code, in the form of procedures (often known as methods).
- Swift uses classes and protocols to implement OOP -
	- Classes - Reference types, support inheritence, protocols, access control, and memory management.
	- Structs - Value types, support inheritance, protocols, access control, and memory management.

#### Structs vs Classes

- Use structs for value types and classes for reference types.
- syntax -
	- `struct Name { ... }`
	- `class Name { ... }`
	- Value type (struct): Copies on assignment and passing.
	- Reference type (class): Multiple references point to the same instance.

- ex. - here, this example shows that structs copy on assignment while classes share references, so mutations on one reference affect the other - 
`
struct Point { var x: Int, var y: Int }
var p1 = Point(x: 1, y: 2)
var p2 = p1 // copy
p2.x = 10
print(p1.x) // 1
print(p2.x) // 10

class Counter { var value = 0 }
let c1 = Counter()
let c2 = c1 // reference
c2.value = 5
print(c1.value) // 5
`

#### Classes/Objects

- define reference types with stored properties and methods.
- instances share identity and are passed by reference.

##### Define a Class

- Create a class with stored properties and methods, then instantiate (Create an instance of that class) and call methods on that instance.
- ex. -
`
class Counter {
	var value = 0
	func inc() { value += 1 }
}

let c = Counter(); c.inc()
`

##### Creating a Bank Account Class

- use an initializer to set up and an instance method to mutate it.
- ex. -
`
class BankAccount {
	var balance: Int
	init(balance: Int) { self.balance = balance }
	func deposit(_ amount: Int) { balance += amount }
}

let acc = BankAccount(balance: 100) // balance already present in the account
acc.deposit(25) // deposited balance to the account
print(acc.balance) // 125 - total new balance
`

#### Structs

- Define lightweight value types with stored properties and memberwise initializers.
- Structs are copied on assignment and passing.

##### Define a Struct

- Create a struct with stored properties and memberwise initializers, then instantiate and call methods on the instance.
- ex. -
`
struct Point { var x: Int; var y: Int }
var p1 = Point(x: 1, y: 2)
var p2 = p1 // its a copy of p1
p2.x = 10
`

- Structs are copied on assignment and passing, so mutations on one reference do not affect the other.


#### Class vs Struct

- Choose value sementics (struct) for simple data and reference sementics (class) for shared identity, inheritence, or Objective-C interop.

##### Key Differences

- Copying - Structs copy on assignment and passing; classes pass references.
- Inheritance - Classes support inheritance; structs do not.
- Identity - Classes have identity sementics; structs compare by value (when Equatable).

- ex. -
`
struct Point { var x: Int; var y: Int }
class Counter { var value = 0 }

var p1 = Point(x: 1, y: 2), p2 = p1 // copy
p2.x = 9 // p1.x remains 1

let c1 = Counter(), c2 = c1 // same instance
c2.value = 7 // c1.value is 7
`


#### Class Properties

- We can store state in class properties. Use `static` for type properties shared across all instances.

##### Stored and Computed

- Use `var` for stored properties and `let` for constants.
- ex. -
`
class User {
	var name: String // stored
	var greeting: String { "Hello, \(name)" } // computed
	static var appName = "MyApp" // type property
	init(name: String) { self.name = name }
}
`

##### Property Observers

- use `willSet` and `didSet` to react to changes on stored properties.
- ex - 
`
class Player {
	var score: Int = 0 {
		willSet { print("About to set to \(newValue)" ) }
		didSet { print("Changed from \(oldValue) to \(score)" ) }
	}
}

let p = Player()
p.score = 100
`


#### Class Methods

- Use `static` or `class` to define type methods that belong to the type itself rather than an instance.

##### Type Methods

- use `class` for overridable type methods; `static` methods cannot be overridden.
- ex. -
`
class Math {
	class func square(_ n: Int) -> Int { n * n } // overridable in subclasses
	static func cube(_ n: Int) -> { n * n * n } // not overridable
}

print(Math.square(4))
print(Math.cube(3))
`

##### Override class func

- Use `class` for overridable type methods; `static` methods cannot be overridden.
- ex - 
`
class Base {
	class func greet() { print("Base") }
	static func ping() { print("Base ping") }
}

class Sub: Base {
	override classs func greet() { print("Sub") }
	// static func cannot be overridden
}

Base.greet()
Sub.greet()
Base.ping()
`


#### self keyword

- use `self` to reference the current instance, disambiguate names, and in type methods to refer to the type.

##### Disambiguation

- Disambiguate means to make something clear or distinct.
- In this instance it is used to make parameter and property names distinct from each other.
- Use `self` to disambiguate parameter and property names.
- Ex -
`
struct User {
	var name: String
	init(name: String) { self.name = name } // disambiguate
}

class Counter {
	var value = 0
	func inc() { self.value += 1 } // optional here
	class func resetAll() { print(Self.self) } // refer to the type
}
`

##### Mutating and self

- Use `self` to disambiguate parameter and property names in mutating methods.
- ex. -
`
struct Counter {
	var value = 0
	mutating func add(_ value: Int) {
		self.value += value // disambiguate
	}
}

var c = Counter()
c.add(5)
print(c.value)
` 


### Inheritance

- create class hierarchies where subclasses inherit properties and methods and cna override behavior.

#### Subclass and Override

- use `override` to override a superclass method.
- ex. -
`
class Animal { func spreak() { print("...") } }
class Dog: Animal { override func speak() { print("WOOF") } }
let a = Animal(); a.speak() // ...
let d =  Dog(); d.speak() // WOOF
`

#### Call super

- use `super` to extend a superclass method when overriding.
- ex. -
`
class Animal { func speak() { print("...) } }
class Dog: Animal {
	override func speak() {
		super.speak()
		print("WOOF")
	}
}

let d = Dog()
d.speak() // WOOF
`


### Polymorphism

- treat related types uniformly via inheritance or protocol conformance.
- Override methods and rely on dynamic dispatch.

#### Basic Polymorphism

- use inheritance to treat related types uniformly.
- ex. -
`
class Animal { func speak() { print("...") } }
class Dog: Animal { override func speak() { print("WOOF") } }
class Cat: Animal { override func speak() { print("MEOW") } }

let animals: [Animal] = [Dog(), Cat()]
animals.forEach { $0.speak() }
`

#### Protocol Polymorphism

- use a protocol to treat unrelated types uniformly.
- ex. -
`
protocol Speaker { func speak() }
struct Dog: Speaker { func speak() { print("WOOF") } }
struct Cat: Speaker { func speak() { print("MEOWWW") } }

leat speakers: [Speaker] = [Dog(), Cat()]
speakers.forEach { $0.speak() }
`


### Protocols

- define behavior contracts that types adopt, and extend them to add default implementations.

#### Defining and Conforming to Protocols

- a protocol defines a blueprint of methods and properties.
- types adopt a protocol by providing implementations.
- syntax -
	- `protocol P { var x: Int { get set }; func f() }`
	- `struct S: P{ ... }`

- ex. - here, this example demonstrates how a protocol is defined and adopted by a type, and how the type provides an implementation for the protocol's method.
`
protocol Greetable { func greet() -> String }

struct Person: Greetable {
	var name: String
	func greet() -> String { "Hello, \(name)" }
}

let p =  Person(name: "Swift")
print(p.greet())
`

- Tip: Use protocol extensions to provide default method implementations.

#### Protocols Extensions (Default Implementations)

- Provide default behavior for conforming types by adding implementations in a protocol extension.
- ex. - here, this example gives `User` a default `describe()` and overrides it in `Car`:
`
protocol Describable { func describe() -> String }

extension Describable {
	func describe() -> String { "(no description)" }
}

struct User: Describable { let name: String }

struct Car: Describable {
	let model: String
	func describe() -> String { "CAr: \(model)" }
}

let u = User(name: "Morgan")
let c = Car(model: "Swift")

print(u.describe())
print(c.describe())
`


#### Protocols with Associated Types

- Use `associatedtype` to make a protocol generic over a placeholder type.
- Conformers bind the placeholder to a concrete type.
- ex. - here, this example defines a generic `Container` protocol and checks if two containers match element-wise:
`
protocol Container{
	associatedtype Element
	mutating func append(_ item: Element)
	var count: Int { get }
	subscript(i: Int) -> Element { get }
}

struct IntStack: Container {
	private var items: [Int] = []
	mutating func append(_ item: Int) { items.append(item) }
	var count: Int { items.count }
	subscript(i: Int) -> Int { items[i] }
}

func allItemsMatch<C1: Container, C2: Container>(_ c1: C1, _ c2: C2) -> Bool
where C1.Element == C2.Element, C1.Element: Equatable {
	guard c1.count == c2.count else { return false }
	for i in 0..<c1.count { if c1[i] != c2[i] { return false } }
	return true
}
`

### Generics

- Write reusable code with type parameters and constraints to ensure correctness without duplication.


#### Generic Functions

- Generics let you write flexible, reusable functions and types.
- USe a placeholder type name like `T` and constrain when needed.
- syntax -
	- `func name<T>(_ a: T) -> T`
	- `struct Box<T> { ... }`
- constraints -
	- `T: Comparable`
	- `where` clauses for more complex bounds.

- ex. - here, this example defines a generic `T`-typed swap function and shows it working with integers:
`
func swapTwo<T>(_ a: inout T, _ b: inout T) {
	let tmp = a
	a = b
	b = tmp
}

var x = 1, y = 2
swapTwo(&x, &y)
print(x)
print(y)
`

#### Generic Constraints (where)

- Constrain generic parameters to types that meet certain requirements, like `Comparable`, using `where` clauses.
- ex.; - here, this example, constrains `T` to `Comparable` so `<` can be used to pick a minimum:
`
func minVal<T: Comparable> (_ a: T, _ b: T) -> { a < b ? a ; b }

print(minVal(3, 7)) // 3
print(minVal("b", "a")) // a
`

- Tip: Constrain generic parameters, e.g.
	- `T:Comparable`, to use operations like `<` or `==`.


### Extensions

- add functionality to existing types without subclassing, including methods, computed properties, nad protoccol conformances.

#### Computed Properties and Methods

- external any type to add helpers that are scoped to that type.
- syntax - 
	- `extension Type { var computed: T { ... }; func util() { ... } }`

- ex. - here, this example adds a computed property and a helper method to `String`.
`
extension String {
	var isBlank: Bool { trimmingCharacters(in: .whitespacesAndNewlines).isEmpty }
	func repeated(_ n: Int) -> String { String(repeating: self, count: n) }
}

print(" ".isBlank) // true
print("Hi".repeated(3)) // HiHiHi
`

#### Protocol Conformance in Extensions

- adopt protocols outside the original type declaration to seperate concerns.
- syntax -
	- `extension Type: Protocol { ... }`

- ex. - here, this example adds `Describable` conformance to `User` via an extension.
`
protocol Describable { func describe() -> String }

struct User { let name: String }

extension User: Describable {
	func describe() -> String { "User(\(name))" }
}

print(User(name: "Kush").describe())
`

#### Nesting by Responsibility

- Organize large types using multiple extensions grouped by feature (e.g., networking, formatting).
- syntax - 
	- `extension Type { /* Feature A */ }`
	- `extension Type { /* Feature B */ }`

- ex - 
`
struct Article { let title: String; let body: String }

extension Article { // Formatting helpers
	var preview: String { String(body.prefix(50)) + "..." }
}

extension Article { // Networking stub
	static func fetchAll() -> [Article] { [] }
}
`



### Access Control

- Restrict visibility of types and members woth `public`, `internal`, `fileprivate` and `private`.

#### Levels

- Swift's default are safe by design: `internal` is the default.
- syntax -
	- `public` - visible to other modules
	- `internal` - module-only, default
	- `fileprivate` - this file - current file
	- `private ` - this scope type/extension

- ex - here, this example shows `public` APIs, a module-internal type, a file-scoped property, and a private helper.
`
public struct APIClient {
	public init() {}
	public func request () {}
}

struct Repository { // internal by default
	fileprivate var cache: [String: String] = [:]
	private func reset() { cache.removeAll() }
}
`

#### Types and Members

- a member cannot be more visible than its enclosing type.
- syntax - 
	- `public struct S { internal var x: Int }` (valid)
	- but not `internal struct S { public var x: Int }`

- ex. -
`
internal struct Box { // whole type is internal
	public var value: Int // warning/error: member more visible than type
}
`

- members cannot exceed the visibility of their type; lower or equal visibility is allowed.

- Tip: Prefer the most restrictive access level that still enables usage.


### Initializers

- Create and customize object setup with designated, convenience, and memberwise initializers.

#### Memberwise and Custom Init

- Structs gets a memberwise initializer by default.
- You can also define custom initializers.
- syntax -
	- `init(params) { self.prop = ... }`

- ex. - here, this example shows a memberwise initializer for a simple struct and a custom initializer with positional parameters.
`
struct user {  var name: String; var age: Int }
let a = User(name: "Kush", age: 30) // memberwise

struct Point {
	var x: Int, y: Int
	init(_ x: Int, _ y: Int) { self.x = x; self.y = y }
}

let p = Point(1, 2)
`

#### Class Designated vs Convenience

- Classes use designated initializers to fully initialize stored properties and convenience initialziers to provide shortcuts.
- syntax -
	- `init(...)` - designated
	- `convenience init(...)` - must call `self.init`

- ex. -
`
class Person {
	let name: String
	let age: Int
	init(name: String, age: Int) {
		self.name = name, self.age = age
	}

	convenience init(name: String) { self.init(name: name, age: 0) }
}

let p1 = Person(name: "Kush", age: 30)
let p2 = Person(name: "Eliza")
`

- the convenience initialzier provides a default for `age` by delegating to the designated initializer.

#### Failable and Throwing Init

- Use failable initializers to return `nil` on invalid input; use throwing initializers to signal errors.
- syntax -
	- `init?`
	- `init throws`

- ex. - here, this example shows a failable initializer for an email and a throwing initializer for a port range check.
`
struct Email {
	let value: String
	init? (_ s: String) {  if s.contains("@") { value = s } else { return nil } }
}

enum InitError: Error { case invalid }
struct Port {
	let number: Int
	init(_ n: Int) throws { guard (1...65535).contains(n) else { throw InitError.invalid }; number = n }
}
`

- Tip: Prefer memberwise initializers for simple value types; add validation in custom initializers.


### Deinitializers

- Run cleanup code before a class instance is deallocated using `deinit`.

#### deinit

- Deinitializers are called automatically when an instance is deallocated.
- syntax - 
	- `deinit { ... }`

- ex. - 
`
class FileHandle {
	init() { print("open") }
	deinit { print("close") }
}

var h: FileHandle? = FileHandle()
h = nil // prints "close"
`

- Deinitializers are useful for cleanup tasks like closing files, releasing resources, or removing observers.


### Value Sementics and COW

- Prefer value sementics for predictability.
- Swift collections use Copy-on-Write(COW) to keep copies cheap until mutation.

#### Syntax

- `var a = [1,2,3]`
- Arrays, sets, and dictionaries use value sementics.


#### Copy-on-Write

- Swift collections use Copy-on-Write (COW) to keep copies cheap until mutation.
- ex. - here, this example shows that arrays use value semantics and COW.
`
var a = [1, 2, 3]
var b = a // shares the same storage - basically a copy

b.append(5) // triggers copy for b only
print(a) // [1, 2, 3]
print(b) // [1, 2, 3, 5]
`

- in the example above, `b` shares storage with `a`, but when `a.append(5)` is called, a copy is made for `b` only.


### Equatable & Comparable

- Adopt `Equatable` and `Comparable` so your types support `==` and ordering operations.

#### Derived vs Custom Conformance

- Derived types inherit comformance automatically, while custom conformance requires explicit implementation.
- ex. -
`
struct Point: Equatable, Comparable {
	var x: Int, y: Int
	static func == (lhs: Point, rhs: Point) -> Bool { lhs.x == rhs.x && lhs.y == rhs.y }
	static func < (lhs: POint, rhs: Point) -> Bool { (lhs.x, lhs.y) < (rhs.x, rhs.y) }
}

let a = Point(x: 1, y: 2), b = Point(x: 1, y: 3)
print(a == b) // false
print(a < b) // true
`

#### Sorting with Comparable

- Conform to `Comparable` to sort custom types and use `min() / max()`.
- ex. -
`
struct Score: Comparable {
	let user: String
	let value: Int
	static func < (1: Score, r: Score) -> Bool { l.value , r.value }
}

let scores = [Score(user: "A", value: 10), Score(user: "B", value: 5), Score(user: "C", value: 7)]
print(sorted.map { $0.value })
print(sorted.last!.value)
`


## Swift Robustness & Async
### Error Handling

- Throw and catch errors explicitly, or convert failures to optionals with `try?` when appropriate.

#### Throw, Try, Catch

- Functions can throw errors with `throw`.
- Callers must use `try` and handle failures with `do/catch`, or use `try?` to get an optional result.
- syntax -
	- `func f() throws -> T`
	- `try f()`
	- `try? f()`
	- `do { ... } catch { ... }`

- ex. -
`
enum InputError: Error { case negative }

func validate(_ n: Int) throws ->  String {
	if n < 0 { throw InputError.negative }
	return "ok: \(n)"
}

do {
	let result = try validate(-1)
	print(result)
} catch {
	print("error")
}

let maybe = try? validate(1)
print(maybe ?? "nil")
`

- Tip: Use `defer` to run cleanup code before exiting the current scope, even when errors are throw.

#### Defer (Cleanup)

- Use `defer` to ensure cleanup code always runs when a scope exits, even if an error is throw.

- ex. - here, this example prints "cleanup" even when an error is thrown, guarnteeing resource cleanup.
`
enum FileError: Error { case fail }

func work(_ ok: Bool) throws {
	print("start")
	defer { print("cleanup") }
	if !ok { throw FileError.fail }
	print("done")
}

do { try work(false) } catch { print("error") }
`

### Concurrency

- Write safe, structured async code with async/await, Tasks, actors, and cooperative cancellation.

#### Basic GCD (Grand Central Dispatch)

- Use `DispatchQueue` to perform work asynchronously.
- the example below runs a task on a background queue and waits for it to complete.
- syntax - 
	- `DispatchQueue.global().async { ... }`
	- `DispatchGroup.enter()`
	- `DispatchGroup.leave()`
	- `DispatchGroup.wait()`

- ex. - here, this example runs work on a background queue and waits for the completion using a DispatchGroup.
`
import Dispatch

print("Start")
let group = DispatchGroup()
group.enter()
DispatchQueue.global().async {
	print("Background work")
	group.leave()
}

group.wait()
print("Done")
`

- Tip: In modern Swift, prefer `async/await` and `Task` over GCD for structured concurrency.

#### Async/Await with Task

- `async/await` lets you write asynchronous code that looks like synchronous code.
- Use `Task` to start concurrent work from synchronous contexts.
- syntax -
	- `func name() async -> T {}`
	- `await value`
	- `Task { ... }`

- ex. - here, this example starts asynchronous work with Task and awaits a value using async/await.
`
import Dispatch

func fetchValue() async -> Int { 7 }

print("Start")
let sem = DispatchSemaphore(value: 0)
Task {
	let v = await fetchValue()
	print("Got \(v)" )
	sem.signal()
}
sem.wait()
print("Done")
`

#### async let (Parallel Child Tasks)

- Use `async let` to start multiple child tasks in parallel and await their results.
- syntax - 
	- `async let name = expression()` starts a child task; use `await` when reading the value.

- ex. - here, this example launches two child tasks in parallel and awaits both to compute a total.
`
import Dispatch

func fetch(_ id: Int) async -> Int { id * 100 }

print("Start")
let sem = DispatchSemaphore(value: 0)
Task {
	async let a = fetch(1)
	async let b = fetch(5)
	let total = await( a + b )
	print("Total \(total)" )
	sem.signal()
}

sem.wait()
print("Done")
`

#### Async/Await with Errors

- Async functions can also (use) throw.
- Combine `try` with `await` and handle failures with `do/catch`.
- syntax -
	- `func name() async throws -> T`
	- `try await`
	- `do { ... } catch { ... }`

- ex. - here, this example shows error handling with try/await and do/catch around an async function:
`
import Dispatch

enum FetchError: Error { case bad }

func fetch(_ ok: Bool) async throws -> Int {
	if !ok { throw FetchError.bad }
	return 42 // errorcode
}

print("Start")
let sem = DispatchSemaphore(value: 0)
Task {
	do {
		let v = try await fetch(false)
		print("ok \(v)")
	} catch{
		print("error")
	}

	sem.signal()
}

sem.wait()
print("Done")
`

#### Task Groups

- Use `withTaskGroup` to fan out concurrent child tasks and aggregate their results.
- syntax - 
	- `withTaskGroup(of: ReturnType.self) { group in ... }`

- ex - here, this example concurrently computes squares for a list of numbers and aggregates the results from the task group:
`
import Dispatch

func square(_ n: Int) async -> Int { n * n }

print("Start")
let sem = DispatchSemaphore(value: 0)
Task {
	var results: [Int] = []
	await withTaskGroup(of: Int.self) { group in
		for n in [1, 2, 3] {
			group.addTask { await square(n) }
		}
		for await val in group {
			results.append(val)
		}
	}

	print(results.sorted().map(String.init).joined(seperator: ","))
	sem.signal()
}

sem.wait()
print("Done")
`

#### Actors and MainActor

- Actors protect their mutable state from data races by serializing access.
- Use `@MainActor` to mark code that must run on the main thread (e.g., UI updates).
- syntax -
	- `actor Name { ... }` defines an actor;  call methods/properties with `await` from outside.
- MainActor: annotate types/functions with `@MainActor` to run on the main thread.

- ex. - here, this example uses an actor to protect mutable state and aggregates increments via a task group:

`
import Dispatch

actor SafeCounter {
	private var value = 0
	func increment() { value += 1 }
	func get() -> Int { value }
}

let counter = SafeCounter()
print("Start")
let sem = DispatchSemaphore(value: 0)
Task {
	await withTaskGroup(of: Void.self) { group in
		for _ in 0..<1000 {
			group.addTask { await counter.increment() }
		}
	}

	print("Final: \(await counter.get())")
	sem.signal()
}

sem.wait()
print("Done")
`

- Tip: Annotate UI-facing APIs with `@MainActor` to ensure they execute on the main thread.

#### Task Cancellation

- Cancel long-running work by calling `task.cancel()` and checking for cancellation with `Task.isCancelled` or `try Task.checkCancellation()`.
- syntax -
	- `t.cencel()`
	- `Task.isCancelled`
	- `try Task.checkCancellation()`

- ex. - here, this example demonstrates cooperative cancellation by cancelling a running task and checking for cancellation:
`
import Dispatch

func slowWork() async throws {
	for i in 1...5 {
		try await Task.sleep(nanoseconds: 300_000_000) // 0.3s
		try Task.checkCancellation()
		print("Step ", i)
	}
}

let sem = DispatchSemaphore(value: 0)
let t = Task {
	do { try await slowWork() } catch { print("Cancelled") }
	sem.signal()
}

DispatchQueue.global().asyncAfter(deadline: .now() + 0.7) {
	t.cancel()
}

sem.wait()
`


### Memory Management

- Understand ARC, avoid retain cycles with weak/unowned, and manage closure captures safely.

#### Automatic Reference Counting (ARC)

- Classes are reference types.
- Swift uses ARC to automatically track and release class instances when no strong references remain.
- ex. - here, this example demonstrates ARC's automatic dellocation of the Box instance when it goes out of scope:
`
class Box {
	let name: String
	init(_ n: String) { name = n; print("init \(n)") }
	deinit { print("deinit \(name)" ) }
}

do {
	let b = Box("A")
	print("in scope")
}

print("after scope")
`

- Tip: Use `weak` to avoid strong refernece cycles between class instances.


#### Strong Reference Cycles

- A strong reference cycle occurs when two class instances hold strong references to each other, preventing ARC from dellocating them.
- MArk one side as `weak` (or `unowned` when appropriate) to break the cycle.
- ex. -
`
class Person {
	let name: String
	var apartment: Apartment?
	init(name: String) { self.name = name }
	deinit { print("Person deinit" ) }
}

class Apartment {
	let unit: String
	weak var tenant: Person? // weak breaks the cycle
	init(unit: String) { "Apartment deinit" }
	deinit { print("Apartment deinit" ) }
}

do {
	var john: Person? = Person(name: "John")
	var unit: Apartment? = Apartment(unit: "4A")
	john!.apartment = unit
	unit!.tenant = john
	john = nil // person deinit
	unit = nil // apartment deinit 
}
`

- Declaring `tenant` as `weak` breaks the cycle so both objects dellocate when their strong references are set to `nil`.

#### Closures and Capture Lists (weak self)

- Closures capture variables by default.
- When a class stores a closure that references `self`, use a capture list like `[weak self]` to avoid retain cycles.
- ex. - 
`
class Loader {
	var onComplete: (() -> Void)?
	func load() {
		// simulate async completion
		DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [weak self] in
			guard let self = self else { return }
			print("Finished: \(self)" )
			self.onComplete()
		}
	} 

	deinit{ print("Loader deinit") }
}

do {
	let loader = Loader()
	loader.onComplete =  { print("done callback" ) }
	loader.load()
}

// loader can be deallocated if nothing else references it
`


## Swift Tooling
### Swift Package Manager (SPM)

- Create packages, declare dependencies, and build libraries and executables with Swift Package Manager.

#### Create a New Package

- Swift Package Manager (SPM) is Swift's built-in dependency manager and build tool.
- syntax -
	- `swift package init --type executable, swift build, swift run`

- ex. - here, this example initializes an executable package, builds it, and runs the generated binary:
`
$ mkdir hello-pkg && cd hello-pkg
$ swift package init --type executable
$ swift build
$ swift run
Hello, world!
`

#### Package.swift

- the maniefst file `Package.swift` describes your package, products, and dependencies.
- syntax - 
	- declare `products`, add `dependencies`, and list `targets` that build your code

- ex. - in Package.swift  -> here, this basic manifest declares an executable product and a single target with no external dependencies:
`
// swift-tools-version: 5.10
import PackageDescription

let package = Package(
	name: "hello-pkg",
	products: [
		.executable(name: "hello-pkg", targets: ["hello-pkg"]),
	],
	dependencies: [
		// .package(url: "https://github.com/apple/swift-argument-parser", from: "1.0.0")
	],
	targets: [
		.executableTarget(
			name: "hello-pkg",
			dependencies: []
		)
	]
)
`

#### Targets, Products, Dependencies

- Targets build code.
- Products are what you ship (executables or libraries).
- Dependencies are other packages you use.
- syntax -
	- add `.package(url:..., from: ...)` in `dependencies`, and reference it via `.product(name:..., package:...)` in target `dependencies`.

- ex.- in Package.swift - this example here adds a dependency and links its product into the executable target, then builds and runs with an option - 
`
// swift-tools-version: 5.10
import PackageDescription

let package = Package(
	name: "hello-pkg",
	products: [
		.executable(name: "hello.pkg", targets: ["hello-pkg"]),
	],
	dependencies: [
		.package(url: "https://github.com", from: "1.2.0")
	],
	targets: [
		.executableTarget(
			name: "hello-pkg",
			dependencies: [
				.product(name: "ArgumentParser", package: "swift-argument-parser")
			]
		)
	]
)
`
- in main.swift - 
`
import ArgumentParser

@main
struct Hello: ParsableCommand {
	@Option(name: .shortAndLong, help: "Name to greet")
	var name: String = "Swift"

	mutating func run() throws {
		print("Hello, \(name)!")
	}
}
`
- in Terminal
`
$ swift build
$ swift run hello-pkg --name Kush
Hello, Kush!
` 

#### Add a Dependency

- Add a dependency in `dependencies` and link it in your target.
- Then, run `swift build`.
- syntax -
	- `swift package resolve` to update dependencies and `swift package clean` to clean build artifacts.

- Tip: Use `swift package resolve` to update dependencies and `swift package clean` to clean build artifacts.


## SwiftUI Basics
### SwiftUI Intro

- Build interfaces declaratively with views, state, and data-driven updates using `SwiftUI`.

### SwiftUI: What & Why?

- **What?**
- SwiftUI is Apple's modern UI framework for building apps on iOS, iPadOS, macOS, watchOS, and tvOS.
- It is declarative - you describe what the UI should look like, and SwiftUI updates it when your data changes.

- **Why?**
- Declarative syntax and reactive updates with `@State`, `@Binding`, and `ObservableObject`.
- Unified API across Apple Platforms.
- Live previews and fast iteration in Xcode.

#### Building the First "App"?

- First, you'll build a simple counter view (`CounterView`) shown by the app entry (`App.swift`).
- Next, you'll refactor the same UI but move its state into a view model (`ObservableObject`), which scales better in the real apps.


#### Step 1: Basic Example

- syntax - Use `@State` for local state and bind it to controls (e.g., `Button`); render with `VStack / Text`.
- ex. - here, this example shows a simple counter using `@State` and a button inside a `VStack`:
- in ContentView.swift:
`
import SwiftUI

struct ContentView: View {
	@State private var count = 0

	var body: some View {
		VStack(spacing: 12) {
			Text("Count: \(count)")
			Button("Increment") { count += 1 }
		}
		.padding()
	}
}
`

- in App.swift:
`
import SwiftUI

@main
struct MyApp: App {
	var body: some Scene {
		WindowGroup { ContentView() }
	}
}
`

- Note: `ContentView.swift`: in SwiftUI, views live in ordinary `.swift` files.
- The starter view is typically named `ContentView.swift`, and the app's entry point (`App.swift`) shows it in a `WindowGroup`.

#### Step 2: State with ObservableObject

- Use `ObservableObject` to hold shared state, and `@StateObject` in the creating view to own its lifecycle.
- Views  update automatically when `@Published` properties change.
- syntax -
	- `class VM: ObservableObject { @Published var count }`, `@StateObject private var vm = VM()`, bind UI to `vm.count`.

- this example refactors the basic counter above.
- the UI and behavior are the same (a counter label nad button), but the state now lives in a `CounterModel` view model managed by `@StateObject`. this pattern scales better as your app grows.

- ex - her, this example promotes state into a `ViewModel` and updates the UI via `@Published` changes observed by the view:
- in Demo.swift
`
import SwiftUI
import Combine

class CounterModel: ObservableObject {
	@Published var count = 0
	func increment() { count += 1 }
}
`

- in ContentView.swift
`
imort SwiftUI

struct ContentView: View {
	@StateObject private var model = CounterModel()

	var body: some View {
		VStack(spacing : 12) {
			Text("Count: \(mode.count)")
			Button("Increment") { mode.increment() }
		}
		.padding()
	}
}
`

- in App.swift
`
import SwiftUI

@main
struct MyApp: App {
	var body: some Scene {
		WindowGroup { ContentView() }
	}
}
`

- Note: Platform look: SwiftUI adapts controls to the platform. On iOS, the burron appears as blue text: on macOS, its a bordered push button. The behavior is the same.
- See iOS style in Xcode: run an iOS app target (iPhone simulator). If you're in a macOS app, and want a text-style button, add `.buttonStyle(.plain)` to the button.


#### Run Example in XCode
##### Standard Workflow (used in this tutorial)

- Every example is organized into three files so you can run it as a small app:
	1. Demo.swift - the example's main code (view and/or supporting types)
	2. ContentView.swift - Shows the demo (reference types from `Demo.swift`)
	3. App.swift - Stable app entry with `WindowGroup { ContentView() }`

- Tip: In your own Xcode project, keep a single `ContentView`. If you already hav one from a previous example, reuse that file and update its boduy for the new demo. Alternatively, create a chooser menu and navigate to uniquely named demo views.

##### Optional: Canvas Preview

- You cna also run any example via Xcode's Canvas Preview without changing your app entry point.
	1. Create a View File - in Xcode, choose File > New > File... > SwiftUI VIew. Name it (for example, `FrameDemo.swift`) and paste the example view's code into it.
	2. Add a Preview - Ensure that the file has a preview. Use either a `PreviewProvider` or the `#Preview` macro.
		- in PreviewProvider.swift
		`
		import SwiftUI

		struct FrameDemo_Previews: PreviewProvider {
			static var previews: some View { FrameDemo() }
		}
		`

		- in #Preview.swift
		`
		import SwiftUI

		#Preview { FrameDemo() }
		`

	3. Open the Canvas - With the file selected, choose Editor > Canvas (or click the Canvas button). If you dont see the preview, build the project once.
	4. Run the Pewview - CLick Resume/Play in the Canvas. Edits to the code will refresh the preview. Use the device picker to switch iPhone/iPad models.
	5. Interact - Previews are interactive - tap buttons, type into fields etc.

- Note: Troubleshooting: if the Canvas wont load, try a project Build, then Clean Build Folder. Make sure the target platform is iOS and the file import `SwiftUI`.
- Run on Simulator - you can also run any example on the simulator by temporarily setting `WindowGroup { ExampleView() }` in `App.swift`, or by navigating to the example from a simple in-app menu.



### iOS Project Setup

- Here, we Create a new SwiftUI in Xcode, confifure signing nad capabilities, and set our deployment targets.

#### Create a New Project in Xcode

- Use the App template, choose Swift and SwiftUI, set your organization identifier (e.g., - `com.example`), and pick a bundle identifier, like `com.example.MyApp`.
- checklist - 
	- Product Name, Team Organization Identifier
	- Interface: SwiftUI; Language: Swift; Use Core Data (optional)
	- Minumum iOS version (e.g., iOS 15+)
- Use this checklist to ensure your project is created with the right templates, idenfitiers, and minimum OS version.

#### Run Examples in Xcode
##### Standard workflow

- Each example is organized into three files, so you can run it as a small app -
	1. Demo.swift - the example's main code (view and/or supporting types)
	2. ContentView.swift - Shows the demo (uses types from `Demo.swift`)
	3. App.swift - Stable entry point with `WindowGroup { ContentView() }`

- Tip: In your own Xcode project, avoid duplicate `ContentView` declarations.
- Reuse a single `ContentView` and update its body per example, or create a simple chooser that navigates to uniquely named demo views.

##### Optional: Canvas Preview

- You can also run any example via XCode's Canvas Preview without changing your app entry point.
	1. Create a SwiftUI View: File -> New -> File... -> SwiftUI View. Paste teh example view code.
	2. Add a Preview: Use a `PreviewProvider` or the `#Preview` macro.

		- ex. -
		- in PreviewProvider.swift
		`
		import SwiftUI

		struct Demo_Preview: PreviewProvider {
			static var previews: some View { Demo() }
		}
		`

		- in #Preview.swift
		`
		import SwiftUI

		#Preview { Demo() }
		`

	3. Open Canvas: Editor -> Canvas. Build once if the preview is unavailable.
	4. Run & Interact: Click Resume/Play; Use the device selector to switch models.

- Troubleshooting: If the preview fails to load, Build, then CLean Build Folder.
- Ensure the target is iOS and the file imports `SwiftUI`.

#### Project Settings

- In the project navigator, select the app target and configure:
	- Signing & Capabilities - Select your team and enable automatic signing.
	- Deployment Info - Minimum iOS version, supported orientations.
	- Bundle Identifier - Matches the one you will register in the App Store Connect.

- Tip: Use `Assets.xcassets` for your app icon and images.
- Add capabilities (e.g., Push Notifications) here when needed.


### SwiftUI Layout

- Build flexible interfaces with stacks, frames, alignment, and spacing using SwiftUI's layout system.

#### Stacks and Spacing

- Use `VStack`, `HStack`, and `ZStack` to arrange views vertically, horizontally,  or in layers.
- Spacing and alignment are configurable.
- syntax:
	- `VStack(alignment: .leading, spacing: 8) { ... }`
	- `HStack { Text("A"); Spacer(); Text("B") }`
	- `ZStack { Color.blue; Text("Overlay") }`

- ex - here, this example arranges content using vertical, horizontal, and layered stacks with titles, spacers adn padding:
- in Demo.swift
`
import SwiftUI

struct StackDemo: View {
	var body: some View {
		VStack(alignment: .leading, spacing: 12) {
			Text("Title").font(.title)
			HStack {
				Text("Left")
				Spacer()
				Text("Right")
			}
			ZStack {
				Color.blue.opacity(0.1)
				Text("Overlay")
			}
		}
		.padding
	}
}
`

- in ContentView.swift
`
import SwiftUI

struct ContentView: View {
	var body: some View { StackDemo() }
}
`

- in App.swift
`
import SwiftUI

@main
struct MyApp: App {
	var body: some Scene {
		WindowGroup { ContentView() }
	}
}
`

#### Frames and Alignment

- Adjust size and position with `.frame()`, `.padding()`, and `.alignmentGuide`.
- syntax:
	- `.frame(width: 200, height: 100)`
	- `.frame(maxWidth: .infinity, alignment: .leading)`
	- `.alignmentGuide(.firstTextBaseline) { d in d[.bottom] }`

- ex. - here, this example demonstrates fixed adn flexible frames, spacers for distribution and baseline alignment for text:
- in Demo.swift
`
import SwiftUI

struct FrameDemo: View{
	var body: some View {
		VStack(spacing: 16) {
			ZStack(alignment: .topLeading) {
				Color.yellow.opacity(0.2)
				Text("Top Left").padding(6)
			}
			.frame(width: 200, height: 100) // fixed size

			HStack {
				Text("Left")
				Spacer()
				Text("Right")
			}
			.frame(maxWidth: .infinity, alignment: .leading) // expand horizontally

			HStack(alignment: .firstTextBaseline, spacing: 8) {
				Text("Title").font(.title)
				Text("Aligned baseline")
				.alignmentGuide(.firstTextBaseline) { d in d[.bottom] }
			}
		}
		.padding()
	}
}
`

- in ContentView.swift
`
import SwiftUI

struct ContentView: View {
	var body: some View { FrameDemo() }
}
`

- in App.swift
`
import SwiftUI

@main
struct MyApp: App {
	var body: some Scene {
		WindowGroup { ContentView() }
	}
}
`

- Tip: Use `Spacer()` to push content apart.


### SwiftUI - HStack VStack ZStack

- Arrange views vertically, horizontally, or in layers using `VStack`, `HStack` and `ZStack`.
- ex. -
- in Demo.swift
`
import SwiftUI

struct StackDemo: View {
	var body:  some  View {
		VStack(spacing: 12) {
			Text("Title").font(.title)
			HStack {
				Text("Left")
				Spacer()
				Text("Right")
			}
			ZStack {
				Color.blue.opacity(0.1)
				Text("Overlay")
			}
		}.padding()
	}
}
`
- in ContentView.swift
`
import SwiftUI

struct ContentView: View {
	var body: some View { StackDemo() }
}
`
- in App.swift
`
import SwiftUI

@main
struct MyApp: App {
	var body: some Scene { WindowGroup { ContentView() } }
}
`

#### Overlays and Alignment

- Layer content with `ZStack` and control placement using `alignment` and `alignmentGuide`.
- syntax -
	- `ZStack(alignment: .topLeading) { ... }`
	- `.alignmentGuide(.top) { d in d[.bottom] }`

- ex. -
- in Demo.swift
`
import SwiftUI

struct OverlayDemo: View {
	var body: some View {
		ZStack(alignment: .topLeading) {
			Image(systemName: "rectangle.fill").resizable().foregroundStyle(.blue.opacity(0.15))
			Text("Badge")
				.padding(6)
				.background(.ultraThinMaterial, in: Capsule())
				.alignmentGuide(.top) { d in d[.bottom] } // custom guide
		}
		.frame(width: 220, height: 120)
		.padding()
	}
}
`

- in ContentView.swift
`
import SwiftUI

struct ContentVIew: View {
	var body: some View { OverlayDemo() }
}
`

- in App.swift
`
import SwiftUI

@main
struct MyApp: App {
	var body: some Scene { WindowGroup { ContentView() } }
}
`

### SwiftUI - Spacers and Alignment

- Use `Spacer()` to distribute content and alignment parameters to control placement.

#### Spacers

- Use `Spacer()` to distribute content and alignment parameters to control placement.
- ex. -
- in Demo.swift
`
import SwiftUI

struct SpacersAlignmentDemo: View {
	var body: some VIew {
		HStack {
			Text("Left"); Spacer(); Text("Right")
		}
		.frame(maxWidth: .infinity, alignment: .leading)
		.padding()
	}
}
`

- in ContentVIew.swift
`
import SwiftUI

struct ContentView: View {
	var body: some View { SpacersAlignmentDemo() }
}
`

- in App.swift
`
import SwiftUI

@main
struct MyApp: App {
	var body: some Scene { WindowGroup { ContentView() } }
}
`

#### Vertical Alignment and Guides

- Align text baselines and customize positioning with `alignment` and `alignmentGuide`.
- syntax  -
	- `HStack(alignment: .firstTextBaseline) { ... }`
	- `.alignmentGuide(.firstTextBaseline) { d in d[.bottom] }`
	- VStack(alignment: .leading) { Spacer() }`

- ex. -
- in Demo.swift
`
import SwiftUI

struct AlignmentGuideDemo: View {
	var body: some View {
		VStack(alignment: .leading, spacing: 16) {
			HStack(alignment: .firstTextBaseline, spacing: 8) {
				Text("Title").font(.title)
				Text("Aligned").alignmentGuide(.firstTextBaseline) { d in d[.bottom] }
			}
			HStack {
				Text("Left"); Spacer(); Text("Right")
			}
		}
		.padding
	}
}
`

- in ContentView.swift
`
import SwiftUI

struct ContentView: View {
	var body: some VIew { AlignmentGuideDemo() }
}
`

- in App.swift
`
import SwiftUI

@main
struct MyApp: App {
	var body: some Scene { WindowGroup { ContentView() } }
}
`


### SwiftUI - Frames and Padding

- with Frames and padding, we control the size and layaout using `.frame()` and spacing using `.padding()`.

#### Fixed Frames

- Use fixed width and height to size content.
- syntax -
	- `.frame(width: 160, height: 60)`

- ex. -
- in Demo.swift
`
import SwiftUI

struct FramePaddingDemo: View {
	var body: some View {
		VStack(spacing: 16) {
			Text("Fixed size").frame(width: 160, height: 60).background(.blue.opacity(0.1))
			Text("Max width").frame(maxWidth: .infinity, alignment: .leading).padding(8).background(.green.opacity(0.1))
		}.padding()
	}
}
`

- in ContentVIew.swift
`
import SwiftUI

struct ContentView: View {
	var body: some View { FramesPaddingDemo() }
}
`

- in App.swift
`
import SwiftUI

@main
struct MyApp: App {
	var body: some Scene { WindowGroup { ContentView() } }
}
`

#### Flexible Frames and Alignment

- Use min/max constraints and alignment to size content responsively.
- syntax -
	- `.frame(minWidth: 120, maxWidth: .infinity, alignment: .trailing)`
	- `.frame(maxHeight: 120)`

- ex. -
- in Demo.swift
`
import SwiftUI

struct FlexibleFramesDemo: View {
	var body: some View {
		VStack(spacing: 12) {
			Text("Trailing")
				.frame(minWidth: 120, maxWidth: .infinity, alignment: .trailing)
				.padding(8)
				.background(.gray.opacity(0.1))
				.cornerRadius(6)
			Text("Tall block")
				.frame(maxWidth: .infinity)
				.frame(maxHeight: 120)
				.background(.orange.opacity(0.1))
				.cornerRadius(6)
		}
		.padding()
	}
}
`

- in ContentView.swift
`
import SwiftUI

struct ContentView: View {
	var body: some View { FlexibleFramesDemo() }
}
`

- in App.swift
`
import SwiftUI

@main
struct MyApp: App {
	var body: some Scene { WindowGroup { ContentView() } }
}
`

### SwiftUI - Grids

- Use `LazyVGrid` and `LazyHGrid` to arrange items in flexible grid layouts.

#### Lazy Grids

- Lazy grids are used to display a large numnber of items in a gtid layout.
- syntax:
	- `LazyVGrid(columns: columns, spacing: 12)`
	- `LazyHGrid(rows: rows, spacing: 12)`

- ex -
- in Demo.swift
`

`

- in ContentView.swift
- in App.swift

### SwiftUI - GeometryReader
### SwiftUI - Safe Area
### SwiftUI - Lazy Stacks


### SwiftUI Navigation
### SwiftUI Data Flow
### SwiftUI Lists & Forms
### SwiftUI Animations
### SwiftUI Gestures
### SwiftUI Modifiers & ViewBuilder
### SwiftUI Previews
### SwiftUI Accessibility
### SwiftUI Styling & Theming



## SwiftUI Data & Architecture
## iOS Capabilities
## iOS Quality & Compliance
## iOS Release & Distribution