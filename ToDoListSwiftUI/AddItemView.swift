//
//  AddItemView.swift
//  ToDoListSwiftUI
//
//  Created by sun on 27/02/2023.
//

import SwiftUI

struct AddItemView: View {
    
    @State var inputText = ""
    
    var body: some View {
        ScrollView {
            TextField("Input text", text: $inputText)
                .padding()
                .foregroundColor(.white)
                .background(Color.gray)
                .cornerRadius(10)
            Button("Add item") {
                print("Add new item")
            }
            .frame(maxWidth: .infinity, minHeight: 55)
            .foregroundColor(Color.white)
            .background(Color.blue)
            .cornerRadius(10)
        }
        .navigationBarTitle("Add new item", displayMode: .inline)
        .padding()
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddItemView()
        }
    }
}
