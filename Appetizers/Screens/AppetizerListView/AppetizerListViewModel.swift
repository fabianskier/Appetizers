//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Oscar Cristaldo on 2022-07-15.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    
    @Published
    var appetizers: [Appetizer] = []
    
    @Published
    var alertItem: AlertItem?
    
    @Published
    var isLoading: Bool = false
    
    @Published
    var isShowingDetail = false
    
    @Published
    var selectedAppetizer: Appetizer?
    
    func getAppetizers() {
        self.isLoading = true
        
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                
                self.isLoading = false
                
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                    
                case .failure(let error):
                    switch error {
                    case .invalidURL:
                        self.alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        self.alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        self.alertItem = AlertContext.invalidData
                    case .unableToComplete:
                        self.alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}
