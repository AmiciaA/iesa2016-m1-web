//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print("Hello")

//var myVariable = 42

//myVariable = 50

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble :Double = 70

let label = "The width is"

let width = 94

let widthLabel = label + String(width)

let apples = 3

let oranges = 5

let appleSummary = "I have \(apples) apples."

//let fruits = I have \(apples + oranges) fruits"


var ShopL = ["cat", "dog", "water"]
print(ShopL[1])
ShopL[1] = "rat"
print(ShopL)
//ShopL[10] = "bla"
//ShopL[2] = 22

var emptyArray = [String]()
emptyArray.append("Hello")
//emptyArray.append(33)
let emptyDico = [String : Float]()

var emptyArray2 = []
//emptyArray2.append("Hello")
//emptyArray2.append(33)

///////////////////////////////////////

let score = 42
var teamScore = 0

if score > 50 {
    teamScore += 3
}
else
{
    teamScore += 1
}

var indScores = [12, 14, 15, 47, 45]
for score2 in indScores {
    print(score + score)
}

//////////////////////////////////

var indScores2 = [75, 43, 103, 87, 12]

var teamScore2 = 0

for score3 in indScores {
    if score3 > 50 {
        teamScore2 += 3
    }
    else
    {
        teamScore2 += 1
    }
}
print(teamScore2)
print(indScores2.count)

/////////////////////////////////////
var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = John Appleseed // nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}


var os1 : String? = "Hello"
print(os1 == nil)
var os2: String?
print (os2 == nil)
var os3: String
print(os3 == nil)

"OpS1 \(os1)"











