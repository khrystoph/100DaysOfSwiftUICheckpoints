import Cocoa

protocol Building {
    var numRooms: Int {get set}
    var buildingCost: Int {get set}
    var reAgent: String {get set}
    func salesSummary()
}

struct House: Building {
    var numRooms: Int
    var buildingCost: Int
    var reAgent: String
    init(rooms: Int, cost: Int, agent: String){
        numRooms = rooms
        buildingCost = cost
        reAgent = agent
    }
    func salesSummary() {
        print("Number of rooms in the House: \(numRooms)")
        print("Cost of the house: $\(buildingCost)")
        print("Real estate agent on listing: \(reAgent)")
    }
}

struct Office: Building {
    var numRooms: Int
    var buildingCost: Int
    var reAgent: String
    init(numRooms: Int, buildingCost: Int, reAgent: String) {
        self.numRooms = numRooms
        self.buildingCost = buildingCost
        self.reAgent = reAgent
    }
    func salesSummary() {
        print("Number of rooms in the office building: \(numRooms)")
        print("Cost of the office: $\(buildingCost)")
        print("Real estate agent on listing: \(reAgent)")
    }
}

let myHouse = House(rooms: 4, cost: 400_000, agent: "Carmen")
let work = Office(numRooms: 10, buildingCost: 2_000_000, reAgent: "Steve")
myHouse.salesSummary()
work.salesSummary()
