//
//  TabelaSample.swift
//  DataTableExample
//
//  Created by Gilson Braggion on 16/08/21.
//

import SwiftUI

struct TabelaSample: View {
    var body: some View {
        
        NavigationView {
            List {
                ForEach((1...10), id: \.self) { text in
                    
                    CustomCell(nomeIterador: "\(text)").listRowSeparator(.hidden);

                    
// ################ Link simples para a nova tela
//                    NavigationLink {
//                        DetalheTabela(itemSelecionado: "\(text)");
//                    } label: {
//                        Text("Item Selecionado \(text)");
//                    }
                    
                    
// #################### Gestos de Editar / Deletar
//                    Text("Iterando na posição \(text)…")//
//                    .swipeActions(edge: .leading) {
//                            Button("Editar") {
//                                print("Chamou o Editar \(text)")
//                            }.tint(.blue)
//                        }
//                        .swipeActions(edge: .trailing) {
//                            Button("Deletar", role: .destructive) {
//                                print("Chamou o Deletar \(text)")
//                            }
//                            Button("Marcar") {
//                                print("Chamou o Flag \(text)")
//                            }
//                            .tint(.orange)
//                        }
                }.listRowInsets(EdgeInsets(top: 2, leading: 0, bottom: 2, trailing: 0))
            }.navigationBarHidden(true)
        }
    }
}

struct TabelaSample_Previews: PreviewProvider {
    static var previews: some View {
        TabelaSample()
    }
}
