import Foundation

// A. enum

enum Rank {
    case ace
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
}

let c_a = Rank.ace
let c_2 = Rank.two
let str_a = "Card a = \(c_a)"
let str_2 = "Card 2 = \(c_2)"
