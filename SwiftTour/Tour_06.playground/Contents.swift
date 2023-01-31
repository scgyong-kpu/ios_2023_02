import Foundation

// A. enum

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    func string() -> String {
        switch self {
        case .ace, .jack, .queen, .king:
            return "\(self)"
        default:
            return String(self.rawValue)
        }
    }
}

let c_a = Rank.ace
let c_2 = Rank.two
let str_a = "Card a = \(c_a), \(c_a.string())"
let str_2 = "Card 2 = \(c_2), \(c_2.string())"

