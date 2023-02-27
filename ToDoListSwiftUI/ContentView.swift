//
//  ContentView.swift
//  ToDoListSwiftUI
//
//  Created by sun on 27/02/2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.tasks) { task in
                RowView(task: task)
            }
            .onDelete(perform: viewModel.deleteItem)
            .onMove(perform: viewModel.move)
        }
        .navigationTitle("Tasks")
        .navigationBarItems(leading: EditButton())
        .navigationBarItems(trailing: addView())
    }
    
    private func addView() -> some View {
        return NavigationLink("Add", destination: {
            AddItemView()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
