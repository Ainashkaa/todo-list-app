//
//   ItemModel.swift
//  ToDoList
//
//  Created by Ainash Turbayeva on 03.03.2023.
//

import Foundation

struct ItemModel: Identifiable {
    let title: String
    let isCompleted: Bool
    let id: String = UUID().uuidString
}
