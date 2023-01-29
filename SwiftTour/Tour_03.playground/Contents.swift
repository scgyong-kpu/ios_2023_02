import Foundation

let ages = [ 13, 18, 34, 29 ]
var cost = 0
for age in ages {
    if age > 19 {
        cost += 20
    } else {
        cost += 15
    }
}
print("Total cost: \(cost) dollars")

