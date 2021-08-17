import SwiftUI

struct ToDoDetail: View {
    
    var itemSelecionado: TodoStruct;
    
    var body: some View {
        
        VStack {
            Spacer()
            Text(" \(itemSelecionado.title)");
            Spacer()
            Text(" \(itemSelecionado.completed.description)");
            Spacer()
        }.navigationBarTitle("Editing ToDo", displayMode: .inline)
        
    }
}
