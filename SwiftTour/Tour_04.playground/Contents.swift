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

// C-2 tuple: named member

let point = (x: 10, y: 15)
point.0
point.1
point.x
point.y
point

// D: a function returning a tuple

func sum_average(numbers: Int...) -> (sum: Int, avg: Double) {
    var sum = 0
    for num in numbers {
        sum += num
    }
    let avg = Double(sum) / Double(numbers.count)
    return (sum: sum, avg: avg)
}
let sa1 = sum_average(numbers: 10, 20, 23)
let sa2 = sum_average(numbers: 1, 2, 3, 4, 5, 6, 10)
sa1

func calculate(numbers: Int...) -> (sum: Int, avg: Double) {
    var sum = 0
    func increaseSumIf(number: Int, devidedBy devider: Int) {
        if number % devider == 0 {
            sum += 1
        }
    }
    for num in numbers {
        sum += num
        increaseSumIf(number: num, devidedBy: 2)
        increaseSumIf(number: num, devidedBy: 5)
    }
    let avg = Double(sum) / Double(numbers.count)
    return (sum: sum, avg: avg)
}

let cav1 = calculate(numbers: 10, 20, 23)
let cav2 = calculate(numbers: 1, 3, 5, 7, 9)
cav1

