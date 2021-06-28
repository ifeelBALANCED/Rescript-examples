// Type
let score: int = 10
let add = (a, b) => a + b
let myInt = 5
let myInt1: int = 5
let myInt2 = (5: int) + (4: int)
let add2 = (x: int, y: int): int => x + y
// Type Alias
type scoreType = int
let x: scoreType = 10
// Type Parameter (Aka Generic)
// this is a tuple of 3 items, explained next
type intCoordinates = (int, int, int)
type floatCoordinates = (float, float, float)

let a: intCoordinates = (10, 20, 20)
let b: floatCoordinates = (10.5, 20.5, 20.5)
// Recursive Types
type rec person = {
  name: string,
  friends: array<person>,
}
// Mutually Recursive Types

type rec student = {taughtBy: teacher}
and teacher = {students: array<student>}

// Primitive Types
// string
let multilineGreeting = "Hello
 world!"
//To concatenate strings, use ++:
let greetings = "Hello " ++ "world!"
// String Interpolation
//There's a special syntax for string that allows
//
//multiline string just like before
//
//no special character escaping
//
//Interpolation
//
//Proper unicode handling
let name = "Joe"

let greeting = `Hello
World
?
${name}`
let age = 10
let message = j`Today I am $age years old.`
//char
let firstLetterOfAlphabet = 'a'
//Regular Expression
let r = %re("/b/g")
// Boolean
//A ReScript boolean has the type bool and can be either true or false. Common operations:
//
//&&: logical and.
//
//||: logical or.
//
//!: logical not.
//
//<=, >=, <, >
//
//==: structural equal, compares data structures deeply: (1, 2) == (1, 2) is true. Convenient, but use with caution.
//
//===: referential equal, compares shallowly. (1, 2) === (1, 2) is false. let myTuple = (1, 2); myTuple === myTuple is true.
//
//!=: structural unequal.
//
//!==: referential unequal.
//
//ReScript's true/false compiles into a JavaScript true/false.
// Integers
//32-bits, truncated when necessary. We provide the usual operations on them: +, -, *, /, etc. See Js.Int for helper functions.
//
//Careful when you bind to JavaScript numbers! Long ones might be truncated. Bind JS number (especially Dates) as float instead.
//
//To improve readability, you may place underscores in the middle of numeric literals such as 1_000_000. Note that underscores can be placed anywhere within a number, not just every three digits.
//
//Floats
//Float requires other operators: +., -., *., /., etc. Like 0.5 +. 0.6. See Js.Float for helper functions.
//
//As with integers, you may use underscores within literals to improve readability.
//
//Unit
//The unit type has a single value, (). It compiles to JavaScript's undefined. It's a dummy type used as a placeholder in various places. You won't need it until you see it.
type user =
  | Number(int)
  | Id({name: string, password: string})

type u = {name: string, password: string}

let me = Id({name: "Joe", password: "123"})

let break = ref(false)

while !break.contents {
  if Js.Math.random() > 0.3 {
    break := true
  } else {
    Js.log("Still running")
  }
}
