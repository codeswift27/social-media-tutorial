//
//  ProfileView.swift
//  Social Media Template
//
//  Created by Lexline Johnson on 11/10/24.
//

import SwiftUI

struct ProfileView: View {
    /*
    var userPosts: [Post] {
        postData.posts.filter { post in
            (post.author == "@angelxoxo" || userData.shares.contains(post.id))
        }
    }
    
    var userLikes: [Post] {
        postData.posts.filter { post in
            (userData.likes.contains(post.id))
        }
    }
     */
    
    /*
    @State var tab: Tab = .posts
    
    enum Tab {
        case posts, likes
    }
     */
    
    var body: some View {
        
        // Our profile view first needs to have our profile
        // banner and picture. Uncomment the following `ZStack`.
        // `ZStacks allow you to overlay different views on top
        // of each other. The highest view in the stack appears
        // at the bottom (in this case the Color.accentColor for
        // the banner), while the lowest view appears on the top
        // (in this case the `HStack` that contains the profile
        // image and `Spacer()`.
        
        // Also note that the `Image` has many modifiers, which
        // resize it, clip it into a circular shape, and then
        // use offset and `Spacer()` to position it in the view.
        
        // Next, uncomment the `HStack` below it. This will
        // display the user's name, username, and bio. For this
        // tutorial, we will leave it hardcoded, but you could
        // store this data in `UserDefaults`. We will get into
        // how to use it to store our likes and shares.
        
        // Below our profile, we want to put posts that the user
        // has posted and posts that the user has liked. Scroll
        // up and uncomment the `Tab` enum and variable. This
        // will store the current tab that the user is on (posts
        // or likes).
        
        // Inside of `Group`, let's create two button for showing
        // posts and likes. Paste the following code for your
        // button posts button label:
        
        /*
        HStack {
            if tab == .posts {
                Text("Posts")
                    .font(.headline)
                    .foregroundStyle(Color.accentColor)
            } else {
                Text("Posts")
                    .font(.headline)
            }
        }
        .frame(maxWidth: .infinity)
        */
        
        // This will make your button color have the accent color
        // if the tab is selected, otherwise it will have a
        // regular text color.
        
        // Paste the following code in your action function:
        
        /*
         withAnimation(nil) {
             tab = .posts
         }
         */
        
        // When the posts button is clicked, the tab will be
        // changed to `.posts`. `withAnimation(nil)` is used to
        // remove the slower animation.
        
        // Repeat the same thing with the likes button, using the
        // label "Likes" and changing the tab to `.likes`.
        
        // Finally, we need to filter our posts to only show
        // posts made by the user when the `.posts` tab is
        // selected, and only show posts liked by the user when
        // the `.liked` tab is selected.
        
        // To do this, first we need to store arrays of the ids
        // of the posts that the user has shared and liked. Go to
        // `ModelData` and uncomment the rest of the code, and
        // then repeat the same process as you did with `PostData`
        // to store `UserData` as an environment object.
        
        // Go to `PostView` and add userData there.
        
        // Fetch the environment variable again and uncomment the
        // code for `userPosts` and `userLikes`. These are
        // computed variables that filter the posts to only store
        // posts that the user has posted and liked.
        
        // Finally, uncomment the `VStack` with the `ForEach`,
        // which will display the user posts or the liked posts
        // depending on the value of the tab.
        
        
        ScrollView {
            /*
            ZStack {
                Color.accentColor
                    .frame(height: 200)
                HStack {
                    Image("angel_dust_pfp")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .overlay {
                            Circle().stroke(Color(UIColor.systemBackground), lineWidth: 4)
                        }
                        .offset(y: 100)
                        .padding(.leading, 24)
                    Spacer()
                }
            }
            .padding(.bottom, 50)
             */
            /*
            HStack {
                VStack(alignment: .leading) {
                    Text("angel dust")
                        .font(.title)
                        .bold()
                    Text("@angelxoxo")
                        .foregroundStyle(Color.accentColor)
                    Text("Hiii! I am someone in the universe. How are you? :)")
                }
                .padding(.horizontal)
                Spacer()
            }
            */
            HStack {
                Group {
                    // Create your buttons here
                }
                .buttonStyle(PlainButtonStyle())
            }
            .padding(.horizontal)
            .padding(.top)
            /*
            VStack {
                ForEach(tab == .posts ? userPosts : userLikes, id: \.id) { post in
                    PostView(title: post.title, author: post.author, replies: post.replies, shares: post.shares, likes: post.likes, content: post.content, id: post.id, shared: userData.isShared(id: post.id), liked: userData.isLiked(id: post.id))
                        .padding(.bottom)
                }
            }
            .padding()
             */
        }
        .ignoresSafeArea()
    }
}

// Uncomment code below to see the preview with PostData and UserData
// after you have created them
#Preview {
    ProfileView()
    /*
        .environmentObject(PostData())
        .environmentObject(UserData())
     */
}
