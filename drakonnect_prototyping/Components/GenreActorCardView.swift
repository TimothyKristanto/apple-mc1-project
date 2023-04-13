//
//  GenreActorCardView.swift
//  drakonnect_prototyping
//
//  Created by Timothy on 06/04/23.
//

import SwiftUI

struct GenreActorCardView: View {
    var communityName: String
    var rating: String
    var isJoined: Bool
    
    init(communityName: String, rating: CGFloat, isJoined: Bool) {
        self.communityName = communityName
        self.rating = String(format: "%.1f", rating)
        self.isJoined = isJoined
    }
    
    var body: some View {
        VStack{
            Image("community_pp")
                .resizable()
                .scaledToFit()
                .frame(width: Constants.screenWidth / 2.5, height: Constants.screenHeight / 7)
            
            Text(communityName)
                .font(.subheadline)
                .bold()
            
            Text("⭐️⭐️⭐️⭐️⭐️ \(rating)")
                .font(.caption2)
            
            NavigationLink(destination: CommunityDetailView(joined: isJoined)){
                VStack{
                    Divider()
                    
                    HStack{
                        Text(isJoined ? "Open" : "See Details")
                            .font(.headline)
                            .bold()
                            .foregroundColor(.blue)
                        
                        Image(systemName: "arrow.forward.circle.fill")
                            .foregroundColor(.blue)
                    }
                    .padding(8)
                }
                
            }
            
        }
        .padding(10)
        .background(Color("Light Gray"))
        .cornerRadius(20)
    }
}

struct GenreActorCardView_Previews: PreviewProvider {
    static var previews: some View {
        GenreActorCardView(communityName: "Drakor Lover", rating: 4.5, isJoined: true)
            .frame(width: 170, height: 250)
    }
}
