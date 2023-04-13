//
//  CommunityRecommendationView.swift
//  drakonnect_prototyping
//
//  Created by Timothy on 05/04/23.
//

import SwiftUI

struct CommunityRecommendationView: View {
    var body: some View {
            VStack{
                ScrollView(.vertical){
                    HStack{
                        Text("Based on Genres")
                            .font(.title2)
                            .bold()
                        
                        Spacer()
                        
                        NavigationLink(destination: JoinedCommunitiesView()){
                            Text("See All")
                                .foregroundColor(.blue)
                        }
                        .padding(.trailing)
                    }
                    .padding(.leading, 20)
                    
                    ScrollView(.horizontal){
                        HStack{
                            GenreActorCardView(communityName: "Drakor Lover", rating: 3.0, isJoined: false)
                                .padding(.horizontal, 5)
                            
                            GenreActorCardView(communityName: "Drakor Lover v2", rating: 5.0, isJoined: false)
                                .padding(.trailing, 5)
                            
                            GenreActorCardView(communityName: "K-Drama Indo", rating: 3.8, isJoined: false)
                                .padding(.trailing, 5)
                            
                            GenreActorCardView(communityName: "Sung Jin Ho Lover", rating: 3.9, isJoined: false)
                                .padding(.trailing, 5)
                        }
                    }
                    .padding(.bottom, 25)
                    
                    HStack{
                        Text("Based on Actors")
                            .font(.title2)
                            .bold()
                        
                        Spacer()
                        
                        NavigationLink(destination: JoinedCommunitiesView()){
                            Text("See All")
                                .foregroundColor(.blue)
                        }
                        .padding(.trailing)
                    }
                    .padding(.leading, 20)
                    
                    ScrollView(.horizontal){
                        HStack{
                            GenreActorCardView(communityName: "Nam Jong Lover", rating: 3.0, isJoined: false)
                                .padding(.horizontal, 5)
                            
                            GenreActorCardView(communityName: "Sam Jeong Lover", rating: 5.0, isJoined: false)
                                .padding(.trailing, 5)
                            
                            GenreActorCardView(communityName: "Yeon Gyeol Lover", rating: 3.8, isJoined: false)
                                .padding(.trailing, 5)
                            
                            GenreActorCardView(communityName: "Suk Jong Ki Lover", rating: 3.9, isJoined: false)
                                .padding(.trailing, 5)
                        }
                    }
                }
            }
    }
}

struct CommunityRecommendationView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityRecommendationView()
    }
}
