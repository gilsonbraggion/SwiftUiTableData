//
//  TabelaPosts.swift
//  DataTableExample
//
//  Created by Gilson Braggion on 16/08/21.
//

import SwiftUI

struct TabelaPosts: View {
    
    @ObservedObject var fetch = FetchPosts()
        var body: some View {
            
            NavigationView {
                List(fetch.listagem) { post in
                    NavigationLink(destination: PostsDetail(itemSelecionado: post)) {
                        
                        VStack(alignment: .leading) {
                            Text(post.title).padding()
                        }
                    }.listRowSeparator(.hidden)
                }.navigationBarTitle("Posts List", displayMode: .inline)
            }
        }
}

struct TabelaPosts_Previews: PreviewProvider {
    static var previews: some View {
        TabelaPosts()
    }
}
