import Foundation

struct TodoStruct: Codable, Identifiable {
    
    public var id: Int
    public var title: String
    public var completed: Bool
    
}
