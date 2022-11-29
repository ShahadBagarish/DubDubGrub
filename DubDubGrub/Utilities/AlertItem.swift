//
//  AlertItem.swift
//  DubDubGrub
//
//  Created by Shahad Bagarish on 28/11/2022.
//

import SwiftUI

struct AlertItem: Identifiable {
    
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    
    //MARK: - MapView Errors
    static let unableToGetLocations = AlertItem(title: Text("Location Error"),
                                                message: Text("Unable to retrieve locations at this time. \nPlease try again later"),
                                                dismissButton: .default(Text("Ok"))
    )
}

