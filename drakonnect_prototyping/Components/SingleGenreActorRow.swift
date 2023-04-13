//
//  SingleGenreRow.swift
//  drakonnect_prototyping
//
//  Created by Timothy on 05/04/23.
//

import SwiftUI

struct SingleGenreActorRow: View {
    var name: String
    @State var isSelected: Bool = false
    
    var body: some View {
        Button{
            isSelected.toggle()
        } label: {
            HStack{
                Text(name)
                    .foregroundColor(.black)
                
                Spacer()
                
                if(isSelected){
                    Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color("Blue Theme"))
                        .frame(width: 20)
                }else{
                    Image(systemName: "checkmark.circle")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color("Blue Theme"))
                        .frame(width: 20)
                }
            }
        }
    }
}

struct SingleGenreActorRow_Previews: PreviewProvider {
    static var previews: some View {
        SingleGenreActorRow(name: "aaaa")
    }
}
