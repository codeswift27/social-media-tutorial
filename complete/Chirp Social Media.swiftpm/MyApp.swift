import SwiftUI

@main
struct MyApp: App {
    @StateObject var postData = PostData()
    @StateObject var userData = UserData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(postData)
                .environmentObject(userData)
        }
    }
}
