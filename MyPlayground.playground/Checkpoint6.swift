import Cocoa

struct Car {
    static private(set) var carModel: String = "N/A"
    static private(set) var numSeats: Int = 1
    private(set) var currentGear: Int = 0
    init(modelName: String, seatCount: Int) {
        Self.carModel = modelName
        Self.numSeats = seatCount
    }
    mutating func shiftGearUp()->Bool {
        if self.currentGear < 6 {
            self.currentGear += 1
            print("Granny shiftin' not double clutchin' like you should. You changed gears to \(self.currentGear)")
            return true
        }
        else {
            print("Already at max gear")
            return false
        }
    }
    mutating func shiftGearDown()->Bool {
        if self.currentGear > 0 {
            self.currentGear -= 1
            print("Gear changed down to \(self.currentGear)")
            return true
        } else {
            print("Already in reverse (gear 0)")
            return false
        }
    }
}

var camry = Car(modelName: "Camry", seatCount: 5)
print("Current Gear on \(Car.carModel) is: \(camry.currentGear)")
print("Number of seats in camry: \(Car.numSeats)")
var didShift = camry.shiftGearUp()
didShift = camry.shiftGearUp()
didShift = camry.shiftGearUp()
didShift = camry.shiftGearUp()
didShift = camry.shiftGearUp()
didShift = camry.shiftGearUp()
didShift = camry.shiftGearUp()
didShift = camry.shiftGearDown()
didShift = camry.shiftGearDown()
didShift = camry.shiftGearDown()
didShift = camry.shiftGearDown()
didShift = camry.shiftGearDown()
didShift = camry.shiftGearDown()
didShift = camry.shiftGearDown()

