//
//  DDGLocation.swift
//  DubDubGrub
//
//  Created by Shahad Bagarish on 24/11/2022.
//

import CloudKit

struct DDGLocation {
    
    //MARK: to not mess up with the spilling mistakes
    static let kName = "name"
    static let KDescription = "description"
    static let KSquareAsset = "squareAsset"
    static let KBannerAsset = "bannerAsset"
    static let KAddress = "address"
    static let KLocation = "location"
    static let KWebsiteURL = "websiteURL"
    static let KPhoneNumber = "phoneNumber"
    
    //MARK: same as the record type
    let ckRecordID: CKRecord.ID
    let name: String
    let description: String
    let squareAsset: CKAsset!
    let bannerAsset: CKAsset!
    let address: String
    let location: CLLocation
    let websiteURL: String
    let phoneNumber: String
    
    //MARK: to map the record in CloudKit to our model
    init( record: CKRecord ){
        ckRecordID = record.recordID
        name = record[DDGLocation.kName] as? String ?? "N/A"
        description = record[DDGLocation.KDescription] as? String ?? "N/A"
        squareAsset = record[DDGLocation.KSquareAsset] as? CKAsset
        bannerAsset = record[DDGLocation.KBannerAsset] as? CKAsset
        address = record[DDGLocation.KAddress] as? String ?? "N/A"
        location = record[DDGLocation.KLocation] as? CLLocation ?? CLLocation(latitude: 0, longitude: 0)
        websiteURL = record[DDGLocation.KWebsiteURL] as? String ?? "N/A"
        phoneNumber = record[DDGLocation.KPhoneNumber] as? String ?? "N/A"
        
    }
}

