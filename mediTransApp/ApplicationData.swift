//
//  ApplicationData.swift
//  mediTransApp
//
//  Created by Peter Deyi on 5/7/23.
//

import Foundation

class ApplicationData: ObservableObject {
    //ObservableObject makes the class visible to other files or other screens
    //anything you want to share has to be published
    @Published var medData:[MedModel]
    @Published var medOrderData: MedOrder
    
    init() {
        medData = [
            MedModel(name:"Hydrocodone", imageName: "hydrocodone", price: 12.99, description: "Hydrocodone, which is often blended with acetaminophen is only prescribed to patients suffering from severe pain" ),
            MedModel(name:"Simvastatin", imageName: "simvastatin", price: 6.99, description: "Simvastatin, commonly sold under the brand name Zocor, is a medication used to lower the number of triglycerides and LDL present in a patient’s blood while raising the amount of HDL" ),
            MedModel(name:"Lisinopril", imageName: "lisinopril", price: 16.99, description: "Lisinopril, sold under the brand names Qbrelis, Zestril, and Prinivil, is an ACE inhibitor. It is prescribed to patients suffering from high blood pressure and congestive heart failure" ),
            MedModel(name:"Levothyroxine", imageName: "levothyroxine", price: 40.99, description: "Levothyroxine is commonly sold under the brand name Synthroid. As its name implies, it is used to treat hypothyroidism, the condition that occurs when the thyroid gland does not produce enough thyroid hormones" ),
            MedModel(name:"Amlodipine Besylate", imageName: "amlodipinebesylate", price: 15.99, description: "Amlodipine Besylate is a calcium channel blocker, a type of drug that makes blood flow easier by slowing the heartbeat and decreasing each beat’s strength." ),
            MedModel(name:"Omeprazole", imageName: "omeprazole", price: 18.99, description: "Omeprazole is a proton-pump inhibitor used to treat heartburn, stomach ulcers, esophageal damage, and gastroesophageal reflux disease (GERD)" ),
            MedModel(name:"Azithromycin", imageName: "azithromycin", price: 24.99, description: "Azithromycin is used to treat bacterial infections." ),
            MedModel(name:"Metformin", imageName: "metformin", price: 11.99, description: " It does not cure diabetes but helps patients manage their condition in conjunction with dietary changes." ),
            MedModel(name:"Hydrochlorothiazide", imageName: "hydrochlorothiazide", price: 21.99, description: "Hydrochlorothiazide is a blood pressure medication that works by stimulating urine production to flush water and salt from the body." )
            
        ]
        medOrderData = MedOrder(medItemOrders: [ ])
    }
}
