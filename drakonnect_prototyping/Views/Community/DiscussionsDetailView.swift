//
//  DiscussionsDetailView.swift
//  drakonnect_prototyping
//
//  Created by Timothy on 11/04/23.
//

import SwiftUI

struct DiscussionsDetailView: View {
    @State var commentContent: String = ""
    @State var likeDiscussion: Bool = false
    
    var body: some View {
        VStack{
            VStack{
                HStack{
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: Constants.screenWidth / 20)
                    
                    Text("Gh443gogo")
                        .font(.caption)
                    
                    Text("5 minutes ago")
                        .font(.caption2)
                        .foregroundColor(.gray)
                    
                    Spacer()
                }
                .padding(.bottom, 5)
                
                HStack{
                    Text("Do you know how to find the perfect K-Drama?")
                        .font(.headline)
                    
                    Spacer()
                }
                
                HStack{
                    Button{
                        likeDiscussion.toggle()
                    }label:{
                        Image(systemName: likeDiscussion ?  "hand.thumbsup.circle.fill" : "hand.thumbsup.circle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: Constants.screenWidth / 17)
                            .foregroundColor(.blue)
                    }
                    
                    Text("1k")
                        .font(.caption)
                        .bold()
                    
                    Spacer()
                    
                    HStack{
                        Image(systemName: "bubble.left")
                            .resizable()
                            .scaledToFit()
                            .frame(width: Constants.screenWidth / 23)
                            .foregroundColor(.black)
                        
                        Text("500")
                            .font(.caption)
                            .bold()
                            .foregroundColor(.black)
                    }
                    .padding(8)
                }
            }
            .padding()
            
            Divider()
            
            ScrollView{
                SingleCommentCardView(username: "ghff", comment: "LMAOOO", time: "1s ago")
                    .padding(.top, 10)
                
                SingleCommentCardView(username: "ffghhh", comment: "Eiyooo i want the answer too!", time: "5m ago")
                    .padding(.top, 5)
                
                SingleCommentCardView(username: "toxic101", comment: "Shut UP!", time: "1h ago")
                    .padding(.top, 5)
                
                SingleCommentCardView(username: "howtobeGOOD101", comment: "Why so toxic bro", time: "2h ago")
                    .padding(.top, 5)
                
                SingleCommentCardView(username: "toxic101", comment: "Shut UP!", time: "3h ago")
                    .padding(.top, 5)
            }
            
            Spacer()
            
            // ADD COMMENT HERE
            HStack{
                TextField("Comment herre...", text: $commentContent)
                    .padding()
                    .background(Color("Light Gray"))
                    .cornerRadius(30)
                
                Button{
                    
                }label: {
                    Image(systemName: "paperclip.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: Constants.screenWidth / 10.75)
                }
                
                Button{
                    commentContent = ""
                }label: {
                    Image(systemName: "paperplane.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: Constants.screenWidth / 10.75)
                }
            }
            .padding(.vertical, 10)
            .padding(.horizontal, 15)
        }
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DiscussionsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DiscussionsDetailView()
    }
}
