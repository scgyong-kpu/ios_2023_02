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

class Mammal: Animal {
    override init(name: String) {
        super.init(name: name)
        legCount = 4
    }
    override func simpleDesc() -> String {
        "A mammal named \(name)"
    }
    func giveBirth() -> Mammal {
        print("Brought forth a baby")
        return baby()
    }
    func baby() -> Mammal {
        Mammal(name: "A baby \(name)")
    }
}

let el = Mammal(name: "Elephant")
el.legCount
el.simpleDesc()
let baby_el = el.giveBirth()
baby_el.simpleDesc()
let grand_el = baby_el.giveBirth()
grand_el.simpleDesc()

class Dog: Mammal {
    override func baby() -> Mammal {
        Dog(name: "\(name)'s Puppy")
    }
    func bark() -> String {
        "Bark!"
    }
}

let jd = Dog(name: "Jindol")
let puppy = jd.giveBirth()
puppy.name
type(of: puppy)
(puppy as! Dog).bark()
puppy.bark()
