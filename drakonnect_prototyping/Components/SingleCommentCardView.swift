//
//  SingleCommentCardView.swift
//  drakonnect_prototyping
//
//  Created by Timothy on 11/04/23.
//

import SwiftUI

struct SingleCommentCardView: View {
    @State var isLiked: Bool = false
    var username: String = ""
    var comment: String = ""
    var time: String = ""
    
    init(username: String, comment: String, time: String) {
        self.username = username
        self.comment = comment
        self.time = time
    }
    
    var body: some View {
        HStack{
            VStack{
                HStack{
                    Image(systemName: "person.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: Constants.screenWidth / 35)
                        .padding(6)
                        .background(.white)
                        .cornerRadius(20)
                    
                    Text(username)
                        .font(.system(size: 14))
                    
                    Text(time)
                        .font(.caption)
                        .foregroundColor(.secondary)
                    
                    Spacer()
                }
                
                HStack{
                    Text(comment)
                        .font(.caption)
                        .padding(.trailing)
                        .padding(.top, 1)
                    
                    Spacer()
                }
                
                HStack{
                    Text("954 likes")
                        .font(.caption2)
                        .foregroundColor(.gray)
                    
                    Spacer()
                }
                .padding(.top, 1)
            }
            
            Button{
                isLiked.toggle()
            }label: {
                Image(systemName: isLiked ? "heart.fill" : "heart")
                    .resizable()
                    .scaledToFit()
                    .frame(width: Constants.screenWidth / 18)
                    .padding(.trailing, 20)
                    .foregroundColor(.black)
            }
        }
        .padding([.leading, .vertical], 13)
        .background(Color("Light Gray"))
        .cornerRadius(20)
        .padding(.horizontal, 10)
    }
}

struct SingleCommentCardView_Previews: PreviewProvider {
    static var previews: some View {
        SingleCommentCardView(username: "ABCd", comment: "I feel you broh! xD", time: "5m ago")
    }
}
