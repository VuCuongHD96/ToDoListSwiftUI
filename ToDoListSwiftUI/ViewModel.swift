//
//  ViewModel.swift
//  ToDoListSwiftUI
//
//  Created by sun on 27/02/2023.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var tasks = [
        Task(isDone: true, name: "Task 1"),
        Task(isDone: true, name: "Task 2"),
        Task(isDone: false, name: "Task 3")
    ]
    
//    init() {
//
//    }
    
    func deleteItem(indexSet: IndexSet) {
        tasks.remove(atOffsets: indexSet)
    }
    
    func move(fromOffsets: IndexSet, toOffset: Int) {
        tasks.move(fromOffsets: fromOffsets, toOffset: toOffset)
    }
}
