//
//  Task.swift
//  ToDoListSwiftUI
//
//  Created by sun on 27/02/2023.
//

import Foundation

class Task: Identifiable {
    
    var id = UUID()
    var isDone: Bool
    var name: String
    
    init(id: UUID = UUID(), isDone: Bool, name: String) {
        self.id = id
        self.isDone = isDone
        self.name = name
    }
}

extension Task {
    static let itemDone = Task(isDone: true, name: "Task done")
    static let itemNotDone = Task(isDone: false, name: "Task not done")
}
