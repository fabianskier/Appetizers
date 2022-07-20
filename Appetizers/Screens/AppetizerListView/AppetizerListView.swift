//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Oscar Cristaldo on 2022-07-14.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject
    var viewModel = AppetizerListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            viewModel.isShowingDetail = true
                            viewModel.selectedAppetizer = appetizer
                        }
                }
                .listStyle(.plain)
                .navigationTitle("🍟 Appetizers")
                .disabled(viewModel.isShowingDetail)
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            .task {
                viewModel.getAppetizers()
            }
            
            if viewModel.isShowingDetail {
                AppetizerDetailView(appetizer: viewModel.selectedAppetizer!,
                                    isShowingDetail: $viewModel.isShowingDetail)
                
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
            
        }
        .navigationViewStyle(.stack)
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
    
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
