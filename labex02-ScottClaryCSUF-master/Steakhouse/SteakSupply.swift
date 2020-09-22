//Create a structure called SteakSupply inside [Steakhouse/SteakSupply.swift](Steakhouse/SteakSupply.swift). It has two properties:
//
//1. message - String
//1. numSteaks - Int
//
//Create two property observers for the numSteaks property. Before the value of numSteaks is changed, it should check whether the newValue will be less than 20. If it is below 20 then it
//should change the value of the message property to "Steak supply is low. You need to restock."
//
//After the numSteaks property is changed, the observer should check whether the numSteaks value has increased. If it increased, it should display the message "Steak supply restocked with x steaks."
//where x is the number of steaks added to the supply. For example, if there used to be 10 steaks and it was changed to 15, then the message should indicate that five steaks were added.


import Foundation

// Place code here
struct SteakSupply{
    var message = ""
    var numSteaks : Int {
        willSet(newSteaks)
        {
            if (newSteaks < 20)
            {
                message = "Steak supply is low. You need to restock."
            }
        }
        didSet {
            if (numSteaks > oldValue)
            {
                message = "Steak supply restocked with \(numSteaks - oldValue) steaks."
            }
        }
    }
    
    
}
