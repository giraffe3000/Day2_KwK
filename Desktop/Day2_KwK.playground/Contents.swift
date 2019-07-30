import Cocoa

func hi (name: String) {           // (what we did yesterday)
    print("Hello", name)
}
hi(name: "World >;)")



func cool(str1: String, str2: String, str3: String) -> String {
    return("I like \(str1) and \(str2) and \(str3).")
}
print(cool(str1: "pizza", str2: "pototoes", str3: "all types of food, actually"))



func add (num1: Double, num2: Double) -> Double{            // four function calculator ;-)
    let added = num1 + num2
    return(added)
}
func subtract (num1: Double, num2: Double) -> Double{
    let subtracted = num1 - num2
    return(subtracted)
}
func multiply (num1: Double, num2: Double) -> Double{
    let multiplied = num1 * num2
    return(multiplied)
}
func divide (num1: Double, num2: Double) -> Double{
    let divided = num1 / num2
    return(divided)
}

var num = add(num1: 24, num2: 56)
num = subtract(num1: num, num2: 20)
num = multiply(num1: num, num2: 0.5)
num = divide(num1: num, num2: 20)
print(num)       //  <|:)

print()




//COLLECTIONS: Arrays and Dictionaries

//Arrays-
var arrStr = [String]() // initialize empty array of type String

var arrStrReady = ["Lays", "Cheetos", "Doritos", "Tostitos", "Fritos"] // initialize array with data already in it

// index- number that corresponds to the position of an item in an array
/*  0. Lays
    1. Cheetos
    2. Doritos
    3. Tostitos
    4. Fritos    */

print(arrStrReady[1])  //print arrStrReady sub 1 (position 1)

arrStrReady.append("Funyuns") //add something to array
print(arrStrReady)

arrStrReady.remove(at: 0) //remove something from array
arrStrReady.remove(at: arrStrReady.count-1) //remove last string in array
print(arrStrReady)

for chip in arrStrReady {
    print("These chips are \(chip)")
}       //>;)

var MINECRAFT = ["creeper","zombie", "chicken", "skleton", "spider"]
MINECRAFT.remove(at:2)
MINECRAFT.append("enderman")
for monster in MINECRAFT {
    print("The \(monster) is scary.")
}
print("There are \(MINECRAFT.count) monsters.")

for i in 1 ... 10 {
    print(i)
}



//Dictionaries
var names = ["Matt", "Zoe"] //this is an array
var colors = ["blue", "pink"]

print("\(names[1])'s color is \(colors[1]).")

// using dictionaries

var together = ["Matt" : 678, "Zoe" : 876]
print(together["Matt"]!)
print(together)
print(together.keys)
print(together.values)

var peopleMonths = ["Hira" : 2, "Miya" : 8]
var months = [1: "January", 2: "February", 3: "March", 4: "April", 5: "May" , 6: "June", 7: "July", 8: "August", 9: "Sepetember", 10: "October", 11: "November", 12: "December"]
var peopleDays = ["Hira" : 3, "Miya" : 31]
var days = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]

var zodiac = ""
for (person, month) in peopleMonths {
    if (months[month] == "January") {
        for (personD, _) in peopleDays{
            if (peopleDays[personD]! <= 19) {
                zodiac = "Capricorn"
            } else {
                zodiac = "Aquarius"
            }
        }
    }
    if (months[month] == "February") {
        for (personD, _) in peopleDays{
            if (peopleDays[personD]! <= 18) {
                zodiac = "Aquarius"
            } else if (peopleDays[personD]! > 18) {
                zodiac = "Pisces"
            }
        }
    }
    if (months[month] == "March") {
        for (personD, _) in peopleDays{
            if (peopleDays[personD]! <= 20) {
                zodiac = "Pisces"
            } else if (peopleDays[personD]! > 20) {
                zodiac = "Aries"
            }
        }
    }
    if (months[month] == "April") {
        for (personD, _) in peopleDays{
            if (peopleDays[personD]! <= 19) {
                zodiac = "Aries"
            } else if (peopleDays[personD]! > 19) {
                zodiac = "Taurus"
            }
        }
    }
    if (months[month] == "May") {
        for (personD, _) in peopleDays{
            if (peopleDays[personD]! <= 20) {
                zodiac = "Taurus"
            } else if (peopleDays[personD]! > 20) {
                zodiac = "Gemini"
            }
        }
    }
    if (months[month] == "June") {
        for (personD, _) in peopleDays{
            if (peopleDays[personD]! <= 20) {
                zodiac = "Gemini"
            } else if (peopleDays[personD]! > 20) {
                zodiac = "Cancer"
            }
        }
    }
    if (months[month] == "July") {
        for (personD, _) in peopleDays{
            if (peopleDays[personD]! <= 22) {
                zodiac = "Cancer"
            } else if (peopleDays[personD]! > 22) {
                zodiac = "Leo"
            }
        }
    }
    if (months[month] == "August") {
        for (personD, _) in peopleDays{
            if (peopleDays[personD]! <= 22) {
                zodiac = "Leo"
            } else if (peopleDays[personD]! > 22) {
                zodiac = "Virgo"
            }
        }
    }
    if (months[month] == "September") {
        for (personD, _) in peopleDays{
            if (peopleDays[personD]! <= 22) {
                zodiac = "Virgo"
            } else if (peopleDays[personD]! > 22) {
                zodiac = "Libra"
            }
        }
    }
    if (months[month] == "October") {
        for (personD, _) in peopleDays{
            if (peopleDays[personD]! <= 22) {
                zodiac = "Libra"
            } else if (peopleDays[personD]! > 22) {
                zodiac = "Scorpio"
            }
        }
    }
    if (months[month] == "November") {
        for (personD, _) in peopleDays{
            if (peopleDays[personD]! <= 21) {
                zodiac = "Scorpio"
            } else if (peopleDays[personD]! > 21) {
                zodiac = "Sagittarius"
            }
        }
    }
    if (months[month] == "December") {
        for (personD, _) in peopleDays{
            if (peopleDays[personD]! <= 21) {
                zodiac = "Sagittarius"
            } else if (peopleDays[personD]! > 21) {
                zodiac = "Aquarius"
            }
        }
    }
    print("\(person) was born in \(months[peopleMonths[person]!]!) and her zodiac sign is \(zodiac).") // or use months[month]!
}




//Classes and Objects

// car- model, color, make, year
// var car = ["Pete", "Honda", "Silver", "Fit", "2012"] // you dont know what pete or silver or fit means...

class Car {         // always capitalize class
    var name = "CARL"
    var make = "Honda"
    var model = "fit"
    var color = "silver"
    var year = 2012
    
    func honk() -> String {
        return ("broom broom")
    }
    
    func setName(newName: String) {
        self.name = newName
    }
    
}
var num1 = 5
var num2 = 6
var car1 = Car()    // make an instance of the car class
var car2 = Car()

car1.setName(newName: "me mums car")

print("im in \(car1.name)")
print(car1.honk())

print(car2.name)


class Player {
    var armour = "chainmail"
    var sword = "iron"
    var pickaxe = "diamond"
    var dog = "brown"
    var house = "dirt"
    
    func upgradeHouse(newHouse: String) {
        self.house = newHouse
    }
}

var player1 = Player()
player1.upgradeHouse(newHouse: "wood")
