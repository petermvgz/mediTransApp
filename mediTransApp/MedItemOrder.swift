//
//  MedItemOrder.swift
//  mediTransApp
//
//  Created by Peter Deyi on 5/7/23.
//

import Foundation

struct MedItemOrder: Identifiable {
    let id = UUID()
    // has to be identifiable
    var medItem: MedModel
    var unit: Int
    
    func getItemCost() -> Double {
            return medItem.price * Double(unit)
    }
    
    func formatItemCost() -> String {
            let itemCost = getItemCost()
            return "$"+String(itemCost.formatted())
    }
    
    func describeMedItemOrder() -> String {
            return "\(medItem.price) x \(unit): \(formatItemCost())"
    }
}
