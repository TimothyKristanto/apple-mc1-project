//
//  JoinedCommunitiesView.swift
//  drakonnect_prototyping
//
//  Created by Timothy on 06/04/23.
//

import SwiftUI

struct JoinedCommunitiesView: View {
    let adaptiveColumns = [
        GridItem(.adaptive(minimum: 170))
    ]
    
    var body: some View {
        ScrollView(.vertical){
            LazyVGrid(columns: adaptiveColumns, spacing: 10) {
                GenreActorCardView(communityName: "Community A", rating: 4.0, isJoined: true)
                
                GenreActorCardView(communityName: "Community B", rating: 4.5, isJoined: true)
                
                GenreActorCardView(communityName: "Community C", rating: 4.3, isJoined: true)
                
                GenreActorCardView(communityName: "Community D", rating: 4.8, isJoined: true)
                
                GenreActorCardView(communityName: "Community E", rating: 2.3, isJoined: true)
            }
        }
        .padding(5)
        .navigationTitle("Communities")
    }
}

struct JoinedCommunitiesView_Previews: PreviewProvider {
    static var previews: some View {
        JoinedCommunitiesView()
    }
}
