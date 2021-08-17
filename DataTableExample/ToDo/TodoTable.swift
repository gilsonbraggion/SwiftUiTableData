//
//  TodoTable.swift
//  DataTableExample
//
//  Created by Gilson Braggion on 16/08/21.
//

import SwiftUI

struct TodoTable: View {
    
    @ObservedObject var fetch = FetchToDo()
    var body: some View {
        
        NavigationView {
            
            List(fetch.todos) { todo in
                
                NavigationLink(destination: ToDoDetail(itemSelecionado: todo)) {
                    
                    VStack(alignment: .leading) {
                        Text(todo.title).padding()
                    }
                }.listRowSeparator(.hidden)
            }.navigationBarTitle("Todo List", displayMode: .inline)

        }

        
    }
}

struct TodoTable_Previews: PreviewProvider {
    static var previews: some View {
        TodoTable()
    }
}
