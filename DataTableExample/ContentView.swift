import SwiftUI

struct ContentView: View {

    init() {
        UITableView.appearance().tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: Double.leastNonzeroMagnitude))
    }

    var body: some View {
                
        TabView {
            TodoTable()
                    .tabItem {
                        Image(systemName: "1.square.fill")
                        Text("To-Do")
            }
            TabelaPosts()
                    .tabItem {
                        Image(systemName: "2.square.fill")
                        Text("Posts")
            }
            Text("Tab Qualquer com conteúdo")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Any")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

