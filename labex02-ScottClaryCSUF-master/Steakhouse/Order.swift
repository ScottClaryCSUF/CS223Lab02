

//Create a structure called Order inside [Steakhouse/Order.swift](Steakhouse/Order.swift). It has four properties:
//
//1. customerName - String
//2. tableNumber - Int
//3. orders - Int
//4. preparedOrders - Int
//
//Create a computed property called status that returns a String. When orders is equal to the preparedOrders, the status should return "Complete", which simulates the case when the kitchen
//completes all the orders. Otherwise, the status should return "In preparation".
import Foundation

struct Order{
    var customerName : String
    var tableNumber : Int
    var orders : Int
    var preparedOrders = 0
    //        let myOrder = Order(customerName: "Christina Tosi", tableNumber: 1, orders: 4)
    var status : String {
        get {
            if (orders == preparedOrders) {return "Complete"}
            else {return "In preparation"}
        }
    }
    
    
}
