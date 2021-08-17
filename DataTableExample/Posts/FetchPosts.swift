import Foundation

class FetchPosts: ObservableObject {
  // 1.
  @Published var listagem = [PostsStruct]()
     
    init() {
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
        // 2.
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            do {
                if let todoData = data {
                    // 3.
                    let decodedData = try JSONDecoder().decode([PostsStruct].self, from: todoData)
                    DispatchQueue.main.async {
                        self.listagem = decodedData
                    }
                } else {
                    print("Lista vazia")
                }
            } catch {
                print("Erro ao buscar a listagem de Posts")
            }
        }.resume()
    }
}
