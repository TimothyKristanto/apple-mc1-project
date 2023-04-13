//
//  SingleDiscussionCardView.swift
//  drakonnect_prototyping
//
//  Created by Timothy on 10/04/23.
//

import SwiftUI

struct SingleDiscussionCardView: View {
    var communityJoined: Bool = false
    
    init(communityJoined: Bool) {
        self.communityJoined = communityJoined
    }
    
    var body: some View {
        HStack{
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
                        .padding(.bottom, 15)
                    
                    Spacer()
                }
                
                
                HStack{
                    Image(systemName: "hand.thumbsup.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: Constants.screenWidth / 20)
                    
                    Text("1k")
                        .font(.caption)
                        .bold()
                    
                    HStack{
                        Image(systemName: "bubble.left.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: Constants.screenWidth / 23)
                            .foregroundColor(.white)
                        
                        Text("500")
                            .font(.caption)
                            .bold()
                            .foregroundColor(.white)
                    }
                    .padding(8)
                    .background(.black)
                    .cornerRadius(20)
                    .padding(.leading, 5)
                    
                    Spacer()
                }
            }
            
            if(communityJoined == true){
                NavigationLink(destination: DiscussionsDetailView()){
                    Divider()
                        .padding(.trailing, 5)
                    
                    Image(systemName: "chevron.right.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: Constants.screenWidth / 18)
                }
            }
        }
        .padding()
        .background(.white)
        .cornerRadius(20)
        .padding(.horizontal, 10)
    }
}

struct SingleDiscussionCardView_Previews: PreviewProvider {
    static var previews: some View {
        SingleDiscussionCardView(communityJoined: false)
            .frame(height: 200)
    }
}
