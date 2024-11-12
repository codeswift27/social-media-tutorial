import Foundation
import SwiftUI

// Here we will fetch the data from the JSON file and store
// it in `posts`. You can open the `Post` file to view the
// struct that will store the data. Uncomment the `PostData`
// struct and go to `MyApp`.

/*
class PostData: ObservableObject {
    @Published var posts: [Post]
    
    init() {
        self.posts = []
        self.posts = load("postData")
    }
    
    private func load<T: Decodable>(_ filename: String) -> T {
        let data: Data
        
        // First we get the file URL
        guard let fileURL = Bundle.main.url(forResource: filename, withExtension: "json") else {
            fatalError("\(filename) not found")
        }
        // We try to convert the contents of the file into `Data`
        do {
            data = try Data(contentsOf: fileURL)
        } catch {
            fatalError("Couldn't load \(filename)\n\(error)")
        }
        // Finally, we use the JSON decoder to store the data
        // our struct
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't decode \(filename) as \(T.self)\n\(error)")
        }
    }
}
 */

// This class stores the user shared and liked post ids.
// We use a subclass of `ObservableObject` because it
// allows us to create `@Published` variables. Published
// variables are useful because when we update their
// values, they immediately update across all view that
// use them. When we update our values, we also save them
// to `UserDefaults`.

/*
class UserData: ObservableObject {
    @Published var shares: [Int]
    @Published var likes: [Int]
    
    init() {
        self.shares = UserDefaults.standard.object(forKey: "shares") as? [Int] ?? []
        self.likes = UserDefaults.standard.object(forKey: "likes") as? [Int] ?? []
    }
    
    func share(id: Int) {
        shares.append(id)
        UserDefaults.standard.set(shares, forKey: "shares")
    }
    
    func unshare(id: Int) {
        shares.removeAll(where: { $0 == id })
        UserDefaults.standard.set(shares, forKey: "shares")
        
    }
    
    func isShared(id: Int) -> Binding<Bool> {
        Binding(
            get: { self.shares.contains(id) },
            set: { newValue in
                if newValue {
                    self.share(id: id)
                } else {
                    self.unshare(id: id)
                }
            }
        )
    }
    
    func like(id: Int) {
        likes.append(id)
        UserDefaults.standard.set(likes, forKey: "likes")
        
    }
    
    func unlike(id: Int) {
        likes.removeAll(where: { $0 == id })
        UserDefaults.standard.set(likes, forKey: "likes")
    }
    
    func isLiked(id: Int) -> Binding<Bool> {
        Binding(
            get: { self.likes.contains(id) },
            set: { newValue in
                if newValue {
                    self.like(id: id)
                } else {
                    self.unlike(id: id)
                }
            }
        )
    }
}
*/
