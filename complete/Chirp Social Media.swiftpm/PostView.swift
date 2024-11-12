import SwiftUI

// Here is our post view. We will use it create the post UI.
struct PostView: View {
    @EnvironmentObject var userData: UserData
    
    var title: String
    var author: String
    var replies: Int
    var shares: Int
    var likes: Int
    var content: String
    var id: Int
    
    @Binding var shared: Bool
    @Binding var liked: Bool
    
    var body: some View {
        GroupBox {
            VStack(alignment: .leading) {
                HStack {
                    Text(title)
                        .font(.headline)
                    Text(author)
                        .foregroundStyle(Color.accentColor)
                }
                Text(content)
                HStack(spacing: 24) {
                    Spacer()
                    Group {
                        Button(action: {}) {
                            HStack {
                                Image(systemName: "bubble.right")
                                Text(String(replies))
                            }
                        }
                        Button(action: {
                            withAnimation(.none) {
                                shared.toggle()
                            }
                            if shared {
                                userData.share(id: id)
                            } else {
                                userData.unshare(id: id)
                            }
                        }) {
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
                        }
                        Button(action: {
                            withAnimation(.none) {
                                liked.toggle()
                            }
                            if liked {
                                userData.like(id: id)
                            } else {
                                userData.unlike(id: id)
                            }
                        }) {
                            if liked {
                                HStack {
                                    Image(systemName: "heart.fill")
                                        .foregroundStyle(.red)
                                    Text(String(likes + 1))
                                        .foregroundStyle(.red)
                                }
                            } else {
                                HStack {
                                    Image(systemName: "heart")
                                    Text(String(likes))
                                }
                            }
                        }
                    }
                    .buttonStyle(PlainButtonStyle())

                }
                .padding(.top)
            }
        }
    }
}

#Preview {
    PostView(title: "Post Title", author: "@username", replies: 0, shares: 0, likes: 3, content: """
 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
 """, id: 1000, shared: .constant(false), liked: .constant(false))
}

