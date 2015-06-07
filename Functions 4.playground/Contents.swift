import UIKit

// Using Function Types
func addTwoInts(a: Int, b: Int) -> Int {
	return a + b
}

func multiplyTwoInts(a: Int, b: Int) -> Int {
	return a * b
}

var mathFunction: (Int, Int) -> Int = addTwoInts

println("\(mathFunction(2, 3))")

mathFunction = multiplyTwoInts

println("\(multiplyTwoInts(2, 3))")

let anotherMathFunction = addTwoInts

// Function Types as Parameter Types
func printMathResult(mathFunction: (Int, Int) -> Int, a: Int, b: Int) {
	println("\(mathFunction(a, b))")
}

printMathResult(addTwoInts, 4, 3)

// Function Types as Return Types
func stepForward(input: Int) -> Int {
	return input + 1
}

func stepBackward(input: Int) -> Int {
	return input - 1
}

func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
	return backwards ? stepBackward : stepForward
}

var currentValue = 3
var moveNearerToZero = chooseStepFunction(currentValue > 0)

println("Counting to zero:")

while currentValue != 0 {
	println("\(currentValue)...")
	currentValue = moveNearerToZero(currentValue)
}

println("zero!")

// Nested Functions
func choosesStepFunction(backward: Bool) -> (Int) -> Int {
	func stepForward(input: Int) -> Int { return input + 1 }
	func stepBackward(input: Int) -> Int { return input - 1 }
	return backward ? stepBackward : stepForward
}

currentValue = -4
moveNearerToZero = choosesStepFunction(currentValue > 0)

while currentValue != 0 {
	println("\(currentValue)...")
	currentValue = moveNearerToZero(currentValue)
}

println("zero!")































