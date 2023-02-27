//
//  StoreAppApp.swift
//  StoreApp
//
//  Created by Zhansaya Bortanova on 07/01/2023.
//

import SwiftUI

@main
struct StoreAppApp: App {
    @StateObject private var storeModel = StoreModel()
    
    
    
    
    var body: some Scene {
        WindowGroup {
            CategoryListScreen().environmentObject(storeModel)
        }
    }
}
