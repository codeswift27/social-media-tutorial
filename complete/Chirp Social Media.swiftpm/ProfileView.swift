//
//  ProfileView.swift
//  Social Media Template
//
//  Created by Lexline Johnson on 11/10/24.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var postData: PostData
    @EnvironmentObject var userData: UserData
    
    @State private var profile = UserDefaults.standard.string(forKey: "profile")
    @State private var name = UserDefaults.standard.string(forKey: "name")
    @State private var username = UserDefaults.standard.string(forKey: "username")
    @State private var bio = UserDefaults.standard.string(forKey: "bio")
    
    var userPosts: [Post] {
        postData.posts.filter { post in
            (post.author == "@codeswift27" || userData.shares.contains(post.id))
        }
    }
    
    var userLikes: [Post] {
        postData.posts.filter { post in
            (userData.likes.contains(post.id))
        }
    }
    
    @State var tab: Tab = .posts
    
    enum Tab {
        case posts, likes
    }
    
    var body: some View {
        ScrollView {
            ZStack {
                Color.accentColor
                    .frame(height: 200)
                HStack {
                    Image(profile ?? "angel_dust_pfp")
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
            HStack {
                VStack(alignment: .leading) {
                    Text(name ?? "codeswift")
                        .font(.title)
                        .bold()
                    Text(username ?? "codeswift27")
                        .foregroundStyle(Color.accentColor)
                    Text(bio ?? "Hi! I'm a developer coding in Python 🐍 and Swift 🐦")
                }
                .padding(.horizontal)
                Spacer()
            }
            HStack {
                Group {
                    Button(action: {
                        withAnimation(nil) {
                            tab = .posts
                        }
                    }) {
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
                    }
                    Button(action: {
                        withAnimation(nil) {
                            tab = .likes
                        }
                    }) {
                        HStack {
                            if tab == .likes {
                                Text("Likes")
                                    .font(.headline)
                                    .foregroundStyle(Color.accentColor)
                            } else {
                                Text("Likes")
                                    .font(.headline)
                            }
                        }
                        .frame(maxWidth: .infinity)
                    }
                }
                .buttonStyle(PlainButtonStyle())
            }
            .padding(.horizontal)
            .padding(.top)
            VStack {
                ForEach(tab == .posts ? userPosts : userLikes, id: \.id) { post in
                    PostView(title: post.title, author: post.author, replies: post.replies, shares: post.shares, likes: post.likes, content: post.content, id: post.id, shared: userData.isShared(id: post.id), liked: userData.isLiked(id: post.id))
                        .padding(.bottom)
                }
            }
            .padding()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ProfileView()
        .environmentObject(PostData())
        .environmentObject(UserData())
}
