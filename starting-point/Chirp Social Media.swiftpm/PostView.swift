import SwiftUI

// Here is our post view. We will use it create the post UI.
struct PostView: View {
    // First we need variables to store the different parts
    // of our post. Uncomment the following code:
    
    /*
    var title: String
    var author: String
    var replies: Int
    var shares: Int
    var likes: Int
    var content: String
    var id: Int
    
    @Binding var shared: Bool
    @Binding var liked: Bool
    */
    
    // Note that the variables here are not initialized. This
    // is because we will have to pass in the values for the
    // variables in the parent view.
    
    var body: some View {

        // First we'll create a `GroupBox` to store the content
        // in our post. Inside our `GroupBox`, we want to place
        // our post title, author, and content. Since we want
        // our title to be arranged vertically, first create a
        // `VStack` with the `.leading` alignment.
        
        // Inside of our VStack, place the `title` in a `Text`
        // view. You can use view modifiers to modify text views
        // and other kinds of views. Type `.font(.headline)`
        // below the `Text` view to give the title the headline
        // font style.
        
        // Put the title `Text` view inside of an `HStack` and
        // create another `Text` view with the author below it.
        // This time use the `.foregroundStyle(Color.accentColor)`
        // modifier to make the author's username display in the
        // app's accent color.
        
        // Below the the title, place another `Text` view to
        // store the post's content.
        
        // Next, we want to put a bar on the bottom to display
        // the number of replies, shares, and likes. Create a
        // `HStack` with a spacing of 24, then inside of that
        // create three `Buttons`. You can create a button using
        // the following syntax:
        
        /*
         Button(action: { [action goes here] } ) {
             [Label view goes here]
         }
         */
        
        // We want our buttons to display an icon and a number
        // beside it. We can do this by creating a `HStack` and
        // placing an `Image` and `Text` view inside. To create
        // an image with a SF icon, use
        // `Image(systemName: [string])`. For the replies use
        // "bubble.right", for shares use "arrow.2.squarepath",
        // and for likes use "heart". Also remember that to
        // convert our integer variables into Strings, use
        // "String(comments)".
        
        // In order to align our buttons to the right edge of
        // the post, put a `Spacer()` above the buttons (but
        // still inside of the `HStack`. Also, outside of the
        // HStack, we can add the `.padding(.top)` modifier to
        // add padding above the `HStack`.
        
        // Our buttons automatically are tinted with our accent
        // color. To fix this, add the
        // `.buttonStyle(PlainButtonStyle())` modifier.
        
        // Now that we've finished making our post view, let's
        // go back to home view.
        
        // After you have added user data (in a later step), add
        // this code to your button actions and labels:
        
        /*
         withAnimation(.none) {
             shared.toggle()
         }
         if shared {
             userData.share(id: id)
         } else {
             userData.unshare(id: id)
         }
         */
        
        /*
         if shared {
             HStack {
                 Image(systemName: "arrow.2.squarepath")
                     .foregroundStyle(.green)
                 Text(String(shares + 1))
                     .foregroundStyle(.green)
             }
         } else {
             HStack {
                 Image(systemName: "arrow.2.squarepath")
                 Text(String(shares))
             }
         }
         */
        
        // Do the same for liked. This will show when you
        // share or like a post, and also update the array of
        // shared and liked posts.
        
        // Start here...
        
        GroupBox {
            
        }
    }
}

// Uncomment to see the preview

#Preview {
    PostView(title: "Post Title", author: "@username", replies: 0, shares: 0, likes: 3, content: """
 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
 """, id: 1000, shared: .constant(false), liked: .constant(false))
}

