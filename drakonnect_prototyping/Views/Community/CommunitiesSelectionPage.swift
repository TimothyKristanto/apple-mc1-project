//
//  CommunitiesSelectionPage.swift
//  drakonnect_prototyping
//
//  Created by Timothy on 06/04/23.
//

import SwiftUI

struct CommunitiesSelectionPage: View {
    @State var communitiesSelection: Int = 1
    
    var body: some View {
        NavigationView{
            VStack{
                Picker("Do you want to see your joined communities or all communities?", selection: $communitiesSelection) {
                        Text("Joined").tag(0)
                        Text("Recommended").tag(1)
                    }
                    .pickerStyle(.segmented)
                    .padding(.bottom, 20)
                    .padding(.horizontal, 15)
                
                if(communitiesSelection == 1){
                    CommunityRecommendationView()
                }else{
                    JoinedCommunitiesView()
                }
            }
            .navigationTitle("Communities")
        }
    }
}

struct CommunitiesSelectionPage_Previews: PreviewProvider {
    static var previews: some View {
        CommunitiesSelectionPage()
    }
}
