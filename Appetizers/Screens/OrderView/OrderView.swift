//
//  OrderView.swift
//  Appetizers
//
//  Created by Oscar Cristaldo on 2022-07-14.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject
    var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(.plain)
                    
                    Button {
                        print("Order Placed")
                    } label: {
                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order",
                               message: "You have no items in your order. Please add an appetizer.")
                }
            }
            .navigationTitle("📝 Orders")
        }
        .navigationViewStyle(.stack)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
