//
//  CustomModifiers.swift
//  DubDubGrub
//
//  Created by Shahad Bagarish on 22/11/2022.
//

import SwiftUI

struct ProfileNameText: ViewModifier {
    func body(content: Content) -> some View {
        content
        .font(.system(size: 32, weight: .bold))
        .lineLimit(1)
        .minimumScaleFactor(0.75)
    }
}
