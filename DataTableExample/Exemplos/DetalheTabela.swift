import SwiftUI

struct DetalheTabela: View {
    var itemSelecionado: String;
    
    var body: some View {
        Text(itemSelecionado)
    }
}

struct DetalheTabela_Previews: PreviewProvider {
    static var previews: some View {
        DetalheTabela(itemSelecionado: "Texto do preview")
    }
}
