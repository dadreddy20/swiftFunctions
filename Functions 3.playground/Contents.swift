//: Playground - noun: a place where people can play

import UIKit

// Constant and Variable Parameters

var name = "Anudeep"

func countElements(string: String) -> Int{
	var i = 0
	for value in string {
		i++
	}
	return i;
}

func alignRight(var string: String, count: Int, pad: String) -> String {
	let amountToPad = count - countElements(string)
	if amountToPad < 1 {
		return string
	}
	for _ in 1...amountToPad {
		string = pad + string
	}
	return string
}

let originalString = "hello"
let paddedString = alignRight(originalString, 10, "-")

// In-Out parameters
func swapTwoInts(inout a: Int, inout b: Int) {
	let temporaryA = a
	a = b
	b = temporaryA
}

var a = 10, b = 20
swapTwoInts(&a, &b)
println("\(a) \(b)")