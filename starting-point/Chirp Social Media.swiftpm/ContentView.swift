import SwiftUI

// Here is our main view. We will use it to build our user interface.
struct ContentView: View {
    var body: some View {
        // MARK: Part 3 - Creating the profile view
        
        // Now that you have created the home view, we want to make
        // a profile view. First let's create a tab view to switch
        // between the home view and the profile view Create a
        // `TabView` and place the `HomeView` inside of it. Paste
        // the following modifier under the `HomeView`:
        
        /*
         .tabItem {
             Label("Home", systemImage: "house.fill")
         }
         */
        
        // This will create a tab for the `HomeView` in the tab bar.
        // Repeat this for the `ProfileView` (place it under the
        // `HomeView`). Use "person.crop.circle.fill" for the system
        // image and make the text label "Profile".
        
        // Now lets create our profile view. Go to `ProfileView`.
        
        HomeView()
    }
}
