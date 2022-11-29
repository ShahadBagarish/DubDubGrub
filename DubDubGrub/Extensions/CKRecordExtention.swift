//
//  CKRecordExtention.swift
//  DubDubGrub
//
//  Created by Shahad Bagarish on 28/11/2022.
//

import CloudKit

extension CKRecord {
    func convertToDDGLocation() -> DDGLocation { DDGLocation(record: self)}
    func convertToDDGProfile() -> DDGProfile { DDGProfile(record: self)}
}
