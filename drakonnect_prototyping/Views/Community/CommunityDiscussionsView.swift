//
//  CommunityDiscussionsView.swift
//  drakonnect_prototyping
//
//  Created by Timothy on 11/04/23.
//

import SwiftUI

struct CommunityDiscussionsView: View {
    @State var searchDiscussion: String = ""
    @State var discussionSelection: Int = 0
    @State var showCreateDiscussionModal: Bool = false
    
    var body: some View {
        VStack{
            Picker("Do you want to see your created discussions or all discussions?", selection: $discussionSelection) {
                Text("All").tag(0)
                Text("My Discussions").tag(1)
            }
            .pickerStyle(.segmented)
            .padding(.horizontal, 15)
            
            VStack{
                HStack{
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15)
                        .foregroundColor(.gray)
                        .padding(.leading, 5)
                    
                    TextField("Search", text: $searchDiscussion)
                        .font(.subheadline)
                    
                    Spacer()
                        
                    if(!searchDiscussion.isEmpty){
                        Button{
                            searchDiscussion = ""
                        }label: {
                            Image(systemName: "x.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 15)
                                .foregroundColor(.gray)
                        }
                        .padding(.trailing, 5)
                    }
                    
                }
                .padding(7)
                .background(.white)
                .cornerRadius(10)
                .padding(.horizontal, 20)
                .padding(.top, 20)
                
                ScrollView{
                    SingleDiscussionCardView(communityJoined: true)
                    
                    SingleDiscussionCardView(communityJoined: true)
                    
                    SingleDiscussionCardView(communityJoined: true)
                    
                    if(discussionSelection == 0){
                        SingleDiscussionCardView(communityJoined: true)
                        
                        SingleDiscussionCardView(communityJoined: true)
                        
                        SingleDiscussionCardView(communityJoined: true)
                        
                        SingleDiscussionCardView(communityJoined: true)
                        
                        SingleDiscussionCardView(communityJoined: true)
                    }
                }
                .padding(.top, 5)
                .padding([.horizontal, .top], 5)
                .padding(.bottom, 10)
            }
            .background(.gray)
            .cornerRadius(20)
            .padding([.horizontal, .top], 10)
            
            Spacer()
        }
        .navigationTitle("Discussions")
        .toolbar {
            Button{
                showCreateDiscussionModal = true
            }label:{
                Image(systemName: "plus")
                    .foregroundColor(.blue)
            }
            .sheet(isPresented: $showCreateDiscussionModal) {
                CreateDiscussionModal(showCreateDiscussionModal: $showCreateDiscussionModal)
            }
        }
    }
}

struct CommunityDiscussionsView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityDiscussionsView()
    }
}
