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
print("Total cost: \(cost) dollars")

