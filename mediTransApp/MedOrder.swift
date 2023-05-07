//
//  MedOrder.swift
//  mediTransApp
//
//  Created by Peter Deyi on 5/7/23.
//

import Foundation
struct MedOrder {
    var medItemOrders: [MedItemOrder]
    var formattedTotalCost: String {
        let totalCost = getTotalCost()
        return "$\(totalCost.formatted())"
    }
    // derived varible - automatically calculate from the fooditemOrder
    
    //update this method so that units could be modified with repeating orders
    mutating func appendMedItemOrder(medItemOrder: MedItemOrder) {
        // Checks if you already ordered the food order
        var unitIsUpdated = false
        //go through each ordered item to see if it is the same as the current order
        for index in 0 ..< medItemOrders.count {
            if medItemOrders[index].medItem.name == medItemOrder.medItem.name
            {
                medItemOrders[index].unit += medItemOrder.unit
                unitIsUpdated = true
            }//end of if statement
        }//end of your for loop
        
        //only append when there is no repeats
        if !unitIsUpdated {
            medItemOrders.append(medItemOrder)
        }
    }
    
    func getTotalCost() -> Double {
        var totalCost = 0.0
        for each in medItemOrders {
            totalCost = totalCost + each.getItemCost()
        }
        return totalCost
    }
}
