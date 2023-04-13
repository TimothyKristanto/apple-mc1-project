//
//  CommunityRatingModal.swift
//  drakonnect_prototyping
//
//  Created by Timothy on 11/04/23.
//

import SwiftUI

struct CommunityRatingModal: View {
    @Binding var showRatingModal: Bool
    
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(width: Constants.screenWidth / 3, height: 5)
                .foregroundColor(.gray)
                .padding(.top, 20)
            
            Spacer()
            
            VStack{
                Text("Do you like this community?")
                    .font(.title)
                    .bold()
                    .padding(.bottom, 3)
                
                Text("Please share us your rating about 3 topics regarding to this community")
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
            }
            .padding(.horizontal, 5)
            
            VStack{
                Text("Topic Suitability")
                    .font(.system(size: 25))
                    .padding(.top, 30)
                
                Rating()
                    .padding(.bottom, 10)
            }
            
            VStack{
                Text("Member Activity")
                    .font(.system(size: 25))
                    .padding(.top, 10)
                
                Rating()
                    .padding(.bottom, 10)
            }
            
            VStack{
                Text("Member Quality")
                    .font(.system(size: 25))
                
                Rating()
                    .padding(.bottom, 10)
            }
            
            Button{
                showRatingModal = false
            }label:{
                Text("Submit")
                    .bold()
                    .foregroundColor(.white)
            }
            .frame(width: Constants.screenWidth / 5)
            .padding(10)
            .background(.blue)
            .cornerRadius(20)
            .padding(.top, 30)
            
            Spacer()
        }
        .frame(width: Constants.screenWidth)
        .background(Color("Light Gray"))
    }
}

struct CommunityRatingModal_Previews: PreviewProvider {
    static var previews: some View {
        CommunityRatingModal(showRatingModal: .constant(true))
    }
}
