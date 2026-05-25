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

#### Short Hand If...Else
#### Nested If
#### Logical Operators
#### Real Life Examples



### Switch


### While Loop
#### Repeat/While Loop
#### Real Life Examples


### For Loop
#### Nested Loops
#### For-Each Loop
#### Real-Life Examples


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