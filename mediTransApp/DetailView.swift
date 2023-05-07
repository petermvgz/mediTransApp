//
//  DetailView.swift
//  mediTransApp
//
//  Created by Peter Deyi on 5/7/23.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var appData: ApplicationData
    @State var medItem: MedModel
    @State private var path = NavigationPath()
    @State private var unitStr = "1"
    var body: some View {
        NavigationStack(path: $path) {
            VStack{
                Text("\(medItem.name)")
                    .font(.title)
                    .foregroundColor(.orange)
                Image("\(medItem.imageName)")
                    .resizable()
                    .frame(width: 300, height: 200, alignment: .center)
                    .scaledToFill()
                Text("$\(medItem.price.formatted())")
                // add description for food
                Text(medItem.description)
                    .font(.caption)
                    .frame(width: 300)
                    .padding(.top, 10)
                Spacer()
                // add unit text field
                HStack {
                    Text("Quantity")
                        .padding(.trailing, 80)
                    TextField ("1", text: $unitStr)
                }
                .frame(width: 300)
                .padding()
                // add button to navigate to receipt
                Button {
                    // turn unitStr into int
                    let unit = Int(unitStr)!
                    
                    // create foodItemOrder to be appended
                    let medItemOrder = MedItemOrder(medItem: medItem, unit: unit)
                    
                    // append to the order
                    appData.medOrderData.appendMedItemOrder(medItemOrder: medItemOrder)
                    path.append("ReceiptView")
                } label: {
                    Text("Order This Medication")
                }
                .buttonStyle(.borderedProminent)
                .navigationDestination(for: String.self) { view in
                    if view == "ReceiptView" {
                        // display receipt view
                        ReceiptView()
                    }
                }
                
            }
        }
        
        
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView()
//    }
//}
