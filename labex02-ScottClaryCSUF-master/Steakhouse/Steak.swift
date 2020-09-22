//Create a mobile application that will simulate the cooking of steaks in a steakhouse. The application already provides an interface that will ask the user to "Cook" the meat and will display information about the meat's weight, internal temperature and doneness.
//
//Your task is to create a Steak structure. Please take note that the names are important. You need to use the exact name and it is case-sensitive. We need this for the unit tests to run correctly.
//
//## Steak
//Please implement the following properties and instance methods inside [Steakhouse/Steak.swift](Steakhouse/Steak.swift).
//
//### Properties
//1. uncookedWeight: Represents the weight of the steak in ounces.
//1. internalTemperature: Represents the temperature of the steak in Fahrenheit.
//1. doneness: A computed property that returns a String representing the doneness of the meat. Refer to the table below to identify the String that will be returned.
//1. cookedWeight: A computed property that returns the weight of the meat accordding to its doneness. This is also measured in ounces. See the tble below to identify the formula for computing the meat's cooked weight from its uncooked weight.
//
//| Internal temperature | Doneness    |
//|----------------------|-------------|
//| 0 to less than 125   | Uncooked    |
//| 125 to less than 135 | Rare        |
//| 135 to less than 145 | Medium rare |
//| 145 to less than 150 | Medium      |
//| 150 to less than 160 | Medium well |
//| 160 to less than 170 | Well done   |
//| over 170             | Burnt       |
//
//
//| Doneness    | Cooked Weight           |
//|-------------|-------------------------|
//| Uncooked    | same as uncooked weight |
//| Rare        | 95% of uncooked weight  |
//| Medium rare | 90% of uncooked weight  |
//| Medium      | 85% of uncooked weight  |
//| Medium well | 80% of uncooked weight  |
//| Well done   | 75% of uncooked weight  |
//| Burnt       | 70% of uncooked weight  |
//
//### Instance method
//cook: Increase the steak's internal temperature by 5 degree Fahrenheit.


import Foundation
struct Steak{
    var uncookedWeight : Double
    var internalTemperature : Double
    var doneness : String {
        switch internalTemperature {
        case 0..<125: return "Uncooked"
        case 125..<135: return "Rare"
        case 135..<145: return "Medium rare"
        case 145..<150: return "Medium"
        case 150..<160: return "Medium well"
        case 160..<170: return "Well done"
        case 170... : return "Burnt"
        default:
            return "Unrecognized temperature"
        }
    }
    var cookedWeight : Double {
        switch doneness {
            case "Uncooked" : return uncookedWeight
            case "Rare" : return 0.95 * uncookedWeight
            case "Medium rare" : return 0.9 * uncookedWeight
            case "Medium" : return 0.85 * uncookedWeight
            case "Medium well" : return 0.8 * uncookedWeight
            case "Well done" : return 0.75 * uncookedWeight
            case "Burnt" : return 0.7 * uncookedWeight
            default: return -1
        }
            
    }
    
    mutating func cook(){
        internalTemperature += 5
    }
}
// Place code here
