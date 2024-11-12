//
//  HomeView.swift
//  Social Media Template
//
//  Created by Lexline Johnson on 11/10/24.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var postData: PostData
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(postData.posts, id: \.id) { post in
                    PostView(title: post.title, author: post.author, replies: post.replies, shares: post.shares, likes: post.likes, content: post.content, id: post.id, shared: userData.isShared(id: post.id), liked: userData.isLiked(id: post.id))
                        .padding(.bottom)
                }
                .padding()
            }
            .navigationTitle("Chirp")
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(PostData())
        .environmentObject(UserData())
}
