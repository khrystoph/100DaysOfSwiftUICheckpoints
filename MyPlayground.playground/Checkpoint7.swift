import Cocoa

class Animal {
    var legs: Int
    init(_ numLegs: Int){
        legs = numLegs
    }
}

class Dog: Animal {
    init() {
        super.init(4)
    }
    func speak() {
       print("woof!")
    }
}

class Corgi: Dog {
    override func speak() {
       print("bark bark!")
    }
}

class Poodle: Dog {
    override func speak() {
        print("yip yip!")
    }
}

class Cat: Animal {
    var isTame: Bool
    init(tame: Bool) {
        isTame = tame
        super.init(4)
    }
    func speak() {
        print("meow")
    }
}

class Persian: Cat {
    init() {
        super.init(tame: true)
    }
    override func speak() {
       print("hiss!")
    }
}

class Lion: Cat {
    init() {
        super.init(tame: false)
    }
    override func speak() {
        print("Roar!")
    }
}

let bonzai = Corgi()
let puddles = Poodle()
let mrsWhiskerson = Persian()
let simba = Lion()

print("bonzai the Corgi says:")
bonzai.speak()
print("bonzai has \(bonzai.legs) legs.")
print("puddles the Poodle says:")
puddles.speak()
print("puddles has \(puddles.legs) legs.")
print("mrsWhiskerson the Persian says:")
mrsWhiskerson.speak()
print("...ok, mrsWhiskerson doesn't actually speak, she hisses and scratches")
print("simba the Lion says:")
simba.speak()
print("...because he's a lion, duh!")

let someDog = Dog()
let someCat = Cat(tame: true)
print("dogs say:")
someDog.speak()
print("some cats say:")
someCat.speak()

if !simba.isTame {
    print("Simba the Lion is Not tame!")
}

if mrsWhiskerson.isTame {
    print("Technically, mrs.whiskerson is tame...but we know that's not REALLY true.")
}
