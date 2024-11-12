//
//  HomeView.swift
//  Social Media Template
//
//  Created by Lexline Johnson on 11/10/24.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        
        // MARK: Part 1 - Setting up the home view
        
        // First, we want to use `NavigationStack` to make this view
        // the root of our view stack. When we access a new view using
        // `NavigationLink`, which we will get to later, the new view
        // will be placed on the top of the stack.
        
        // SwiftUI uses embedded views to present content. To put
        // content inside of the `NavigationStack`, it must be placed
        // inside of the braces (`{}`).
        
        // Let's make a vertical scroll view so that the user can
        // scroll up and down to view posts. Use `ScrollView` and
        // place it inside of the `NavigationStack`.
        
        // We also want a title for our view. Place
        // `.navigationTitle("Chirp")` under the `ScrollView` (outside
        // of the braces).
        
        // Now to add a post, we first want to create a view for our
        // post. Open the file called `PostView` continue following the
        // steps there.
        
        // After you have created your `PostView`, we can initialize it
        // with sample values. Paste the following code into your
        // `ScrollView`:
        
        /*
        PostView(title: "Post Title", author: "@username", replies: 0, shares: 0, likes: 3, content: """
     Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
     """
        )
        .padding()
        */
        
        // MARK: Part 2 - Fetching the post data
        
        // This is a good start, but now we want to load more posts. In
        // your resources folder, there is JSON file storing some posts.
        // We will use the data to populate our home page. Open the
        // `ModelData` file and continue the steps there.
        
        // After you have created PostData and passed it in as an
        // environment object, we can now access it in this view. Go to
        // the top of the view (above `var body: some View`) and paste
        // the following code:
        
        /*
         @EnvironmentObject var postData: PostData
         */
        
        // Then replace the `PostView` that has the sample data with the
        // following code:
        
        /*
         ForEach(postData.posts, id: \.id) { post in
             PostView(title: post.title, author: post.author, replies: post.replies, shares: post.shares, likes: post.likes, content: post.content)
                 .padding(.bottom)
         }
         */
        
        // The `ForEach` will iterate through every post in
        // `postData.posts` and create PostViews for each of them.
        
        // Now that we finished making our home view, go to `ContentView`.
        
        // Start here...

        NavigationStack {
            
        }
    }
}

// Uncomment code below to see the preview with PostData and UserData
// after you have created them
#Preview {
    HomeView()
    /*
        .environmentObject(PostData())
        .environmentObject(UserData())
     */
}
