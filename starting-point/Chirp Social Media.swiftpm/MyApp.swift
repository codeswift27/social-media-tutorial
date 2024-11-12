import SwiftUI

// This is where the root view is located. The main view is currently
// `ContentView()`, but you can also change it to something else. Try
// replacing it with `Text("hello world")` and see what happens.

// After uncommenting `PostData`, uncomment the commented out code
// here. `postData` stores an instance of `PostData` and passes it
// into the other views as an environment object. This will allow us
// to access it in any of the child views. Go to `HomeView`.
@main
struct MyApp: App {
    /*
    @StateObject var postData = PostData()
     */
    var body: some Scene {
        WindowGroup {
            ContentView()
            /*
                .environmentObject(postData)
             */
        }
    }
}
