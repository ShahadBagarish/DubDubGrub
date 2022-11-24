//
//  DDGProfile.swift
//  DubDubGrub
//
//  Created by Shahad Bagarish on 24/11/2022.
//

import CloudKit

struct DDGProfile {
    
    //MARK: to not mess up with the spilling mistakes
    static let kFirstName = "firstName"
    static let KLastName = "lastName"
    static let KAvatar = "avatar"
    static let KCompanyName = "companyName"
    static let KBio = "bio"
    static let KIsCheckedIn = "isCheckedIn"
    
    //MARK: same as the record type
    let ckRecordID: CKRecord.ID
    let firstName: String
    let lastName: String
    let avatar: CKAsset!
    let companyName: String
    let bio: String
    let isCheckedIn: CKRecord.Reference? = nil
    
    //MARK: to map the record in CloudKit to our model
    init( record: CKRecord ){
        ckRecordID  = record.recordID
        firstName   = record[DDGProfile.kFirstName] as? String ?? "N/A"
        lastName    = record[DDGProfile.KLastName] as? String ?? "N/A"
        avatar      = record[DDGProfile.KAvatar] as? CKAsset
        companyName = record[DDGProfile.KCompanyName] as? String ?? "N/A"
        bio         = record[DDGProfile.KBio]as? String ?? "N/A"
        
    }
}
