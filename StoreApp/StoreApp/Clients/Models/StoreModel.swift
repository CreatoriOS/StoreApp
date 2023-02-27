//
//  StoreModel.swift
//  StoreApp
//
//  Created by Zhansaya Bortanova on 07/01/2023.
//

import Foundation
@MainActor
class StoreModel: ObservableObject{
    
    let client = StoreHTTPClient()
    @Published var categories: [Category] = []
    
    
    func fetchCategories() async throws {
       categories = try await client.getCategories(url: URL.allCategories)
    }
    
}
