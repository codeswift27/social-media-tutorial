import SwiftUI

// Struct for storing post data
struct Post: Codable {
    var title: String
    var author: String
    var replies: Int
    var shares: Int
    var likes: Int
    var content: String
    var id: Int
}
