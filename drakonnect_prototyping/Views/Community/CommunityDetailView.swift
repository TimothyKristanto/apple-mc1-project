//
//  CommunityDetailView.swift
//  drakonnect_prototyping
//
//  Created by Timothy on 10/04/23.
//

import SwiftUI

struct CommunityDetailView: View {
    @State var joined: Bool
    @State var showRatingModal: Bool = false
    @State var showLeaveConfirmationDialog: Bool = false
    
    init(joined: Bool) {
        self.joined = joined
    }
    
    var body: some View {
        VStack{
            ScrollView{
                Image("community_pp")
                    .resizable()
                    .frame(height: Constants.screenHeight / 3.75)
                
                VStack{
                    Image(systemName: "person.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: Constants.screenWidth / 7)
                        .padding(25)
                        .background(Color("Light Gray"))
                        .cornerRadius(70)
                    
                    Text("Drakor Lovers")
                        .font(.system(size: 20))
                        .bold()
                    
                    Text("⭐️⭐️⭐️⭐️⭐️  4.7")
                        .font(.subheadline)
                        .padding(.top, 1)
                    
                    Text("Hi! We are the drakor lovers. Right in our community, we discussed a lot about Korean Drama. Hope you will join us and feel comfortable.")
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: Constants.screenWidth / 1.25)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(.top, 20)
                    
                    GenresActorsListCardView(status: "Interests")
                        .padding(.top, 10)
                    
                    VStack{
                        HStack{
                            Text("Discussions")
                                .font(.headline)
                                .bold()
                            
                            Spacer()
                            
                            if(joined){
                                NavigationLink(destination: CommunityDiscussionsView()){
                                    Text("See All")
                                        .foregroundColor(.blue)
                                }
                            }
                        }
                        .padding([.leading, .top, .trailing], 12)
                        
                        Divider()
                        
                        SingleDiscussionCardView(communityJoined: false)
                            .padding(.bottom, 5)
                        
                        SingleDiscussionCardView(communityJoined: false)
                            .padding(.bottom, 5)
                        
                        SingleDiscussionCardView(communityJoined: false)
                            .padding(.bottom, 15)
                    }
                    .background(Color("Light Gray"))
                    .cornerRadius(20)
                    .padding(10)
                    
                    VStack{
                        HStack{
                            Text("Members")
                                .font(.headline)
                                .bold()
                            
                            Spacer()
                        }
                        .padding([.leading, .top], 12)
                        
                        Divider()
                        
                        ScrollView(.horizontal){
                            HStack{
                                Image(systemName: "person.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: Constants.screenWidth / 10)
                                    .padding(25)
                                    .background(.gray)
                                    .cornerRadius(70)
                                    .padding([.leading, .bottom], 10)
                                    .foregroundColor(.white)
                                
                                Image(systemName: "person.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: Constants.screenWidth / 10)
                                    .padding(25)
                                    .background(.gray)
                                    .cornerRadius(70).foregroundColor(.white)
                                
                                Image(systemName: "person.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: Constants.screenWidth / 10)
                                    .padding(25)
                                    .background(.gray)
                                    .cornerRadius(70).foregroundColor(.white)
                                
                                Image(systemName: "person.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: Constants.screenWidth / 10)
                                    .padding(25)
                                    .background(.gray)
                                    .cornerRadius(70).foregroundColor(.white)
                            }
                            .padding(5)
                        }
                    }
                    .background(Color("Light Gray"))
                    .cornerRadius(20)
                    .padding(10)
                    
                    if(joined){
                        Button{
                            showLeaveConfirmationDialog = true
                        }label: {
                            Text("Leave Community")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(width: Constants.screenWidth / 1.1)
                        }
                        .padding(10)
                        .background(.red)
                        .cornerRadius(20)
                        .padding(.bottom, 20)
                        .padding(.top, 10)
                        .confirmationDialog("Are you sure you want to leave the community?", isPresented: $showLeaveConfirmationDialog) {
                            Button("Leave", role: .destructive) {
                                withAnimation{
                                    joined = false
                                     showLeaveConfirmationDialog = false
                                }
                            }
                        }
                    }else{
                        Button{
                            withAnimation{
                                joined = true
                            }
                        }label: {
                            Text("Join")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(width: Constants.screenWidth / 1.1)
                        }
                        .padding(10)
                        .background(.blue)
                        .cornerRadius(20)
                        .padding(.bottom, 20)
                        .padding(.top, 10)
                    }
                    
                    
                    
                }
                .offset(y: -1 * (Constants.screenHeight / 15))
                
                
                Spacer()
            }
        }
        .ignoresSafeArea()
        .toolbar {
            joined ?
                Button{
                    showRatingModal = true
                } label:{
                    Image(systemName: "star.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: Constants.screenWidth / 22)
                        .foregroundColor(.white)
                    
                    Text("Rate")
                        .font(.subheadline)
                        .foregroundColor(.white)
                }
                .padding(5)
                .padding(.trailing, 5)
                .background(.blue)
                .cornerRadius(20)
                .sheet(isPresented: $showRatingModal, content: {
                    CommunityRatingModal(showRatingModal: $showRatingModal)
                }):
                nil
        }
    }
}

struct CommunityDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityDetailView(joined: true)
    }
}
