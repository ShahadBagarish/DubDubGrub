//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by Shahad Bagarish on 16/11/2022.
//

import SwiftUI

struct LocationListView: View {
    
    @State private var locations: [DDGLocation] = [DDGLocation(record: MockData.location)]
    
    var body: some View {
        NavigationView{
            List{
                ForEach(locations, id: \.ckRecordID){ location in
                    NavigationLink (destination: LocationDetailView(location: location)) {
                        LocationCell(location: location)
                    }
                }
            }
            .navigationTitle("Grub Spots")
        }
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}
