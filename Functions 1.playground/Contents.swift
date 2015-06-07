//: Playground - noun: a place where people can play

import UIKit

func sayHello(personName: String) -> String
{
	return "Hello, " + personName + "!"
}

var reply = sayHello("Anudeep")


func minMax(array: [Int]) -> (min: Int, max: Int)?
{
	if array.isEmpty { return nil }
	var currentMin = array[0];
	var currentMax = array[0];
	
	for value in array[1..<array.count] {
		if value < currentMin {
			currentMin = value
		}
		else if currentMax < value {
			currentMax = value
		}
	}
	return (currentMin, currentMax)
}

let bounds = minMax([4, -4, 2, 71, 311, 711])
println("min is \(bounds!.min) and max is \(bounds!.max)")

var arr = [Int]()
let newBounds = minMax(arr)
