//
//  MedModel.swift
//  mediTransApp
//
//  Created by Peter Deyi on 5/7/23.
//

import Foundation

struct MedModel: Identifiable {
    var id = UUID()
    var name: String
    var imageName: String
    var price: Double
    var description: String
}
