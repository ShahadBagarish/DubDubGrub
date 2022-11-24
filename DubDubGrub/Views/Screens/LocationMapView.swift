//
//  locationMapView.swift
//  DubDubGrub
//
//  Created by Shahad Bagarish on 16/11/2022.
//

import SwiftUI
import MapKit

struct LocationMapView: View {
    
    @State private var region =
    MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.331516, longitude: -121.891054), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    // MARK: Span is zoom-in : Bigger it is the more zoom out will be
    
    var body: some View {
        ZStack{
           Map(coordinateRegion: $region)
                .ignoresSafeArea()
            
            VStack {
                logoView().shadow(radius: 10)
                Spacer()
            }
            
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
