//
//  CustomCell.swift
//  DataTableExample
//
//  Created by Gilson Braggion on 16/08/21.
//

import SwiftUI

struct CustomCell: View {
    var nomeIterador: String;
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0.0) {
            HStack {
                NavigationLink {
                    DetalheTabela(itemSelecionado: "\(nomeIterador)");
                } label: {
                    Text("Item selecionado");
                    Text(nomeIterador);
                    Spacer();
                }.padding()

            }

        }.navigationTitle("Listagem").overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.gray, lineWidth: 1)
        )
    }
}

struct CustomCell_Previews: PreviewProvider {
    static var previews: some View {
        CustomCell(nomeIterador: "")
    }
}
