import Cocoa

class Dictionary {
    
    var namesToColors = ["Hira": "Red", "Annica": "Purple", "Ella": "Green", "Suzie": "Yellow", "Sarah": "Blue"]
    
    func findS() {
        for (name, color) in namesToColors {
            if (name.prefix(1) == "S") { // or name.hasPrefix("S")
                print("\(name)'s favorite color is \(color).")
            }
        }
    }
    
}

var dict = Dictionary()
// String(), Array(), Float(), Double(), Int()- all premade classes
// dict is an instance of the Dictionary() class that we just made
// test now knows the information store in Dictionary()
// test is capable of performing the action called findS()
dict.findS()

class Scholar {
    
    var grade = Int()
    var studying = "Swift"
    var name = ""
    
    init (scholarName: String, gradeLevel: Int) {
        name = scholarName
        grade = gradeLevel
    }
    
    func setGrade(newGrade: Int) {
        self.grade = newGrade
    }
    func getGrade() -> Int {
        return self.grade
    }
    
    func setName(newName: String) {
        self.name = newName
    }
    func getName() -> String {
        return self.name
    }
    
    func writeCode() {
        print("\(name) is writing code.")
    }
    
    func whatGrade() {
        print("\(name) is in grade \(grade).")
    }
    
}

var scholar1 = Scholar(scholarName: "Hira", gradeLevel: 10)
var scholar2 = Scholar(scholarName: "Inaaya", gradeLevel: 7)
print(scholar1.grade)
scholar1.writeCode()
scholar1.setName(newName: "giraffe")
print("Her name is now \(scholar1.getName())")
scholar2.whatGrade()
print("-> one year later...")
scholar2.setGrade(newGrade: 8)
print("\(scholar2.name) is now in grade \(scholar2.getGrade())")


