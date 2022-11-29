//
//  locationMapView.swift
//  DubDubGrub
//
//  Created by Shahad Bagarish on 16/11/2022.
//

import SwiftUI
import MapKit

struct LocationMapView: View {
    
    @StateObject private var viewModel = locationMapViewModel()
        
    var body: some View {
        ZStack{
            Map(coordinateRegion: $viewModel.region)
                .ignoresSafeArea()
            
            VStack {
                logoView().shadow(radius: 10)
                Spacer()
            }
        }
        .alert(item: $viewModel.alertItem, content: { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        })
        .onAppear{
            viewModel.getLocations()
        }
    }
}

struct locationMapView_Previews: PreviewProvider {
    static var previews: some View {
        LocationMapView()
    }
}

struct logoView: View {
    var body: some View {
        Image("ddg-map-logo")
            .resizable()
            .scaledToFit()
            .frame(height: 70)
    }
}
