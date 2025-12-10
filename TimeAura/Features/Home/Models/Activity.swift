//
//  Activity.swift
//  TimeAura
//
//  Created by found on 10/12/25.
//

import SwiftUI

struct Activity: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let time: String
    let points: Int
    let avatar: String // nome da imagem no Assets
}
