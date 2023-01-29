import Foundation

let ages = [ "Kelly": 13, "Mac": 18, "John": 34, "Kim": 29 ]
var cost = 0
let names = [ "Kelly", "Grace", "Kim" ]
for name in names {
    if let age = ages[name] {
        if age > 19 {
            cost += 20
        } else {
            cost += 15
        }
    } else {
        cost += 20
    }
}
//print("Total cost: \(cost) dollars")

let integers = [ 9, 10, 11 ]
for integerToDescribe in integers {
    var description = "The number \(integerToDescribe) is"
    switch integerToDescribe {
    case 2, 3, 5, 7, 11, 13, 17, 19:
        description += " a prime number, and also"
        fallthrough
    default:
        description += " an integer."
    }
//    print(description)
}

let puzzleIn = "great minds think alike"
var puzzleOut = ""
for char in puzzleIn {
    switch char {
    case "a", "e", "i", "o", "u", " ":
        continue
    default:
        puzzleOut.append(char)
    }
}
//print(puzzleOut)

var age = 20
switch age {
case 20:
    print("Just adult")
case let x where x > 20:
    print("Adult")
case let x where x >= 13:
    print("Teenagers")
//default:
//    print("kid")
}
