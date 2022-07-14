//
//  OrderView.swift
//  Appetizers
//
//  Created by Oscar Cristaldo on 2022-07-14.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationView {
            Text("Orders")
                .navigationTitle("📝 Orders")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
