//
//  RowView.swift
//  ToDoListSwiftUI
//
//  Created by sun on 27/02/2023.
//

import SwiftUI

struct RowView: View {
    
    var task: Task
    
    var body: some View {
        HStack {
            Image(systemName: task.isDone ? "checkmark.seal.fill" : "checkmark.seal")
            Text(task.name)
            Spacer()
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RowView(task: .itemDone)
            RowView(task: .itemNotDone)
        }
        .previewLayout(.sizeThatFits)
    }
}
