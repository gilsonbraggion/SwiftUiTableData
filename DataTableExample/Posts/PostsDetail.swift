import SwiftUI

struct PostsDetail: View {
    
    var itemSelecionado: PostsStruct;
    
    var body: some View {
        VStack {
            Spacer()
            Text(" \(itemSelecionado.title)");
            Spacer()
            Text(" \(itemSelecionado.body)");
            Spacer()
        }.navigationBarTitle("Editing Post", displayMode: .inline)
        

    }
}
