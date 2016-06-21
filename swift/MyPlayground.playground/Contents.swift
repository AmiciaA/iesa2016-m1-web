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

//var optionalName: String? = John Appleseed // nil
/*var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}*/


var os1 : String? = "Hello"
print(os1 == nil)
var os2: String?
print (os2 == nil)
var os3: String
//print(os3 == nil)

"OpS1 \(os1)"

var vegeComment :String
let vege = "tomato"

switch vege {
    case "cucumber", "watercress":
     vegeComment = "That would mala a good tea sandwich"

default:
     vegeComment = "Everything..."
}

print(vegeComment)

var n = 2
while n < 100 { n = n * 2 }
print (n)

var m = 2
repeat { m = m * 2 } while m < 100
print(m)

var FFL = 0
for i in 0..<4 {FFL += 1 }
print(FFL)

var sfl = 0
for var i = 0; i < 4; ++i { sfl += i }
print(sfl)

func greetToName(name: String, day: String)-> String {
    return "Hello \(name), today is \(day)."
}
greetToName ("Bob", day: "Tuesday")


///////////////////////////////////////

let min = 10
let max = 20
let value = 15
var range = (value, min, max)
print(range.1)

func greet(name: String, day: String)-> (String, String, String)  {
    return (name, day, "Hello \(name), today is \(day).")
}
let lala = greet ("bob", day: "tuesday")
lala.1
print(lala)


/////////////////////////////////
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers { sum += number }
    return sum
}
sumOf()
sumOf(42,597,12)


func returnFifteen() -> Int {
    var y = 10
    func add() {y += 5}
    add()
    return y
}
returnFifteen()

var numbers = [22, 33, 44]
var v = numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})
print (v)

var tab = ["Julien", "Ophélie", "Vincent" ]
var vp = tab.map({
    (prenom: String) -> String in
    return "Bonjour \(prenom)"
})
print (vp)

/*
var people = [(name: "Vincent", age: 32)]
people.map({
    (person: String, Int) -> Int in
    return person.1
})*/
//////////////////////////////////////////////////////

class Shape {
    var sidesCount = 0
    func getInfo() -> String {
        return "A shape with \(sidesCount) sides."
    }
}

var shape = Shape()

shape.sidesCount = 7
var shapeDesc = shape.getInfo()

class NamedShape {
    var sidesCount: Int = 0
    var name: String
    init(name: String) { self.name =  name }
    func getInfo() -> String { return "\(sidesCount) sides"
}
}

/*var carre = NamedShape(name: "drapeau")
shape.sidesCount = 4
var shapeDesc = shape.getInfo()*/

class Square : NamedShape {
    var sideLength: Double
    init(length: Double, name: String) {
    self.sideLength = length
    super.init(name: name)
    sidesCount = 4
    }
    
        func area() -> Double {
            return sideLength * sideLength
        }
        
        override func getInfo()->String {
            return "Square: L=\(sideLength)."
        }
}

var eee = Square(length: 5.2, name: "myS")
eee.area()

class Person {
    var name: String = ""
    func getName() -> String {return name}
    func setName(newName: String) {name = newName}
}


class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    init (length: Double, name: String) {
        self.sideLength = length
        super.init(name: name)
        sidesCount = 3
    }
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
}


///////////////////////////////////////////////////


class Counter {
    var count: Int = 0
    func incrementBy(amount: Int, times: Int) {
        count += amount * times
}
}

var counter = Counter()
counter.incrementBy(2, times: 7)

/////////////////////////////////////////////////

enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func getInfo() -> String {
        switch self {
        case .Ace: return "Ace"
        case .Jack: return "Jack"
        case .Queen: return "Queen"
        case .King: return "King"
        default: return
            String(self.rawValue)
        }
    }
}

let ace = Rank.Ace
let aceRawValue = ace.rawValue



/*struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDesc() ->String {
        return "The \(rank.simpleDesc()) of \(suit.simpleDesc())"
    }
}

let threeOfSpades = Card(rank: .Three, suit: . Spades)
let threeOfSpadesDesc = threeOfSpades.simpleDesc()*/





protocol Personnage {
    func seDeplacer() -> String
}

class Humain : Personnage{
    func seDeplacer() -> String { return "Je marche" }
}

class Limace : Personnage{
    func seDeplacer() -> String { return "Je rampe" }
}


//////////////////////////////////////////



class Book {
    var titre: String = ""
    var auteur: String = ""
    
    private func getDesc() -> String {return "Le titre est \(titre), l'auteur est \(auteur)"}
    
}

var livre = Book()
livre.titre = "Le labyrinthe"
livre.auteur = "Charly"

livre.getDesc()



















