//: Playground - noun: a place where people can play

import UIKit

// External Parameter names
func join(s1: String, s2: String, joiner: String) -> String {
	return s1 + joiner + s2
}

join ("hello","world", ", ")

func newJoin(string s1: String, toString s2: String, withJoiner joiner: String) -> String {
	return s1 + joiner + s2
}

newJoin(string: "hello", toString: "world", withJoiner: " ,")

// Shorthand external parameter names
func containsCharacter(#string: String, #characterToFind: Character) -> Bool {
	for character in string {
		if character == characterToFind {
			return true
		}
	}
	return false
}

let containsAVee = containsCharacter(string: "aardvark", characterToFind: "v")

// Default parameter values
func join(string s1: String, toString s2: String, withJoiner joiner: String = " ") -> String {
	return s1 + joiner + s2
}

join(string: "hello", toString: "world", withJoiner: "-")
join(string: "hello", toString: "world")

// External Names for Parameters with Default Values
func anotherJoin(s1: String, s2: String, _ joiner: String = "_") -> String {
	return s1 + joiner + s2
}

anotherJoin("anudeep", "reddy", "&")

// Variadic Parameters

func arithmeticMean(numbers: Double...) -> Double {
	var total: Double = 0
	for value in numbers {
		total += value
	}
	return total / Double(numbers.count)
}

println(arithmeticMean(1, 2, 3, 4, 5))
















