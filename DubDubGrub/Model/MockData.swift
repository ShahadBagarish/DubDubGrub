//
//  MockData.swift
//  DubDubGrub
//
//  Created by Shahad Bagarish on 24/11/2022.
//

import CloudKit

struct MockData{
    
    static var location: CKRecord {
        let record = CKRecord(recordType: RecordType.location)
        record[DDGLocation.kName]           = "Shahad's bar and Grill"
        record[DDGLocation.KAddress]        = "123 main street"
        record[DDGLocation.KDescription]    = "This is a test description. not sure how long to make it to test the 3 lines. "
        record[DDGLocation.KWebsiteURL]     = "https//apple.com"
        record[DDGLocation.KLocation]       = CLLocation(latitude: 37.331516, longitude: -121.891054)
        record[DDGLocation.KPhoneNumber]    = "+966-545268860"
        return record
    }
    
}
