import Foundation

func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)"
}

let gr1 = greet(name: "Dave", day: "Monday")
let gr2 = greet(name: "Kelly", day: "Sunday")
let gr3 = greet

func average(numbers: Int...) -> Double {
    var sum = 0
    for num in numbers {
        sum += num
    }
    return Double(sum) / Double(numbers.count)
}
let avg1 = average(numbers: 10, 20, 23)
let avg2 = average(numbers: 1, 2, 3, 4, 5, 6, 10)

// C-1 tuple

let pair = (12, 13.0)
pair
pair.0
pair.1
pair

