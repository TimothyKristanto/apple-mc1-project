//
//  UserProfileView.swift
//  drakonnect_prototyping
//
//  Created by Timothy on 06/04/23.
//

import SwiftUI

struct UserProfileView: View {
    var body: some View {
        ScrollView{
            VStack{
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
                    
                    Text("Alexander")
                        .font(.system(size: 20))
                        .bold()
                    
                    Text("Hi! I'm Alexander, you could just call me Alex. I truly love K-Drama from the bottom of my heart. I like it because of the handsome and beautiful actors and actresses.")
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: Constants.screenWidth / 1.25)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(.top, 20)
                    
                    GenresActorsListCardView(status: "Genres")
                        .padding(.top, 10)
                    
                    GenresActorsListCardView(status: "Actors")
                        .padding(.bottom, 20)
                }
                .offset(y: -1 * (Constants.screenHeight / 15))
                
                
                Spacer()
            }
            
        }
        .ignoresSafeArea()
        
        }
        
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
