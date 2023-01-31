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

var the_card = Rank.six
the_card.string()
the_card = .five
the_card.string()
the_card = .jack
the_card.string()

enum ServerResponse {
    case result(name: String, city: String)
    case error(msg: String)
}

let success = ServerResponse.result(name: "Kim", city: "Seoul")
let failure = ServerResponse.error(msg: "Invalid Name")

func desc(sr: ServerResponse) -> String {
    switch sr {
    case let .result(name, city):
        return "Name: \(name), City: \(city)"
    case let .error(msg):
        return "Error: \(msg)"
    }
}

desc(sr: success)
desc(sr: failure)
desc(sr: .result(name: "Lee", city: "시흥"))

class ClassPerson {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let c_person = ClassPerson(name: "Kim", age: 10)
var copy_c = c_person
copy_c.name = "Lee"

//print((original: c_person.name, copy: copy_c.name))

struct StructPerson {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let s_person = StructPerson(name: "Kim", age: 10)
var copy_s = s_person
copy_s.name = "Lee"

print((original: s_person.name, copy: copy_s.name))