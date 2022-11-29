//
//  LocationMapViewModel.swift
//  DubDubGrub
//
//  Created by Shahad Bagarish on 29/11/2022.
//

import MapKit

final class locationMapViewModel: ObservableObject {
     
    // MARK: Span is zoom-in : Bigger it is the more zoom out will be
    @Published var region =
    MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.331516, longitude: -121.891054),
                       span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    @Published var alertItem: AlertItem?

    @Published var locations: [DDGLocation] = []
    
    
    func getLocations() {
        CloudKitManager.getLocations { [self] results in
            switch results {
                
            case .success( let locations):
                self.locations = locations
            case .failure(_):
                alertItem = AlertContext.unableToGetLocations
                
            }
        }

    }
    
}
