//
//  ClouKitManager.swift
//  DubDubGrub
//
//  Created by Shahad Bagarish on 28/11/2022.
//

import CloudKit

struct CloudKitManager {
    
    static func getLocations(completed: @escaping (Result<[DDGLocation], Error>) -> Void ) {
        
        //Sort by name thats why in cloud kit it's sortable
        let sortDescriptor = NSSortDescriptor(key: DDGLocation.kName, ascending: true)
        
        // The Query
        let query = CKQuery(recordType: RecordType.location, predicate: NSPredicate(value: true))
        // Add the sort to the queryable data
        query.sortDescriptors = [sortDescriptor]
        
        //The network call
//        CKContainer.default().publicCloudDatabase.fetch(withQuery: query, inZoneWith: nil) { records in
//
//            // if good
//            guard let records = records else { return }
//
//            let locations = records.map { $0.convertToDDGLocation() }
//            completed(.success(locations))
//        }
//
        CKContainer.default().publicCloudDatabase.perform(query, inZoneWith: nil) { records, error in
            
            //if bad
            guard error == nil else {
                completed(.failure(error!))
                return
            }
            
            // if good
            guard let records = records else { return }
            
            let locations = records.map { $0.convertToDDGLocation() }
            completed(.success(locations))
        }
    }
}
