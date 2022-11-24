//
//  ViewExtension.swift
//  DubDubGrub
//
//  Created by Shahad Bagarish on 22/11/2022.
//

import SwiftUI

extension View {
    func ProfileNameStyle() -> some View {
        self.modifier(ProfileNameText())
    }
}
