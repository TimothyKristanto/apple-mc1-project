//
//  Rating.swift
//  drakonnect_prototyping
//
//  Created by Timothy on 11/04/23.
//

import SwiftUI

struct Rating: View {
    @State var number: Int = 0
    
    var body: some View {
        HStack{
            ForEach(1...5, id: \.self){ star in
                Button{
                    number = star
                }label: {
                    if(number >= star){
                        Image(systemName: "star.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: Constants.screenWidth / 17)
                            .foregroundColor(.yellow)
                    }else{
                        Image(systemName: "star")
                            .resizable()
                            .scaledToFit()
                            .frame(width: Constants.screenWidth / 17)
                    }
                }
                .foregroundColor(.black)
            }
        }
    }
}

struct Rating_Previews: PreviewProvider {
    static var previews: some View {
        Rating()
    }
}
