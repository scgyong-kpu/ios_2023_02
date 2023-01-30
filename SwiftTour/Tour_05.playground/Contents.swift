import Foundation

class Animal {
    var legCount = 0
    var name: String
    init(name: String) {
        self.name = name
    }
    func simpleDesc() -> String {
        "This \(name) has \(legCount) legs"
    }
}

let lark = Animal(name: "Lark")
lark.legCount = 2
lark.simpleDesc()
