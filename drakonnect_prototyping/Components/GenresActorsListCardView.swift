//
//  GenresActorsListCardView.swift
//  drakonnect_prototyping
//
//  Created by Timothy on 10/04/23.
//

import SwiftUI

struct GenresActorsListCardView: View {
    var status: String = ""
    
    init(status: String){
        self.status = status
    }
    
    var body: some View {
        VStack{
            HStack{
                Text(status)
                    .font(.headline)
                    .bold()
                
                Spacer()
            }
            .padding([.leading, .top], 12)
            
            Divider()
            
            if(status == "Genres"){
                HStack{
                    Text("Romance")
                        .font(.subheadline)
                        .padding(10)
                        .background(.white)
                        .cornerRadius(20)
                    
                    Text("Comedy")
                        .font(.subheadline)
                        .padding(10)
                        .background(.white)
                        .cornerRadius(20)
                        .padding(.horizontal, 3)
                    
                    Text("Horror")
                        .font(.subheadline)
                        .padding(10)
                        .background(.white)
                        .cornerRadius(20)
                }
                .padding(.vertical, 5)
                
                HStack{
                    Text("Mystery")
                        .font(.subheadline)
                        .padding(10)
                        .background(.white)
                        .cornerRadius(20)
                    
                    Text("School")
                        .font(.subheadline)
                        .padding(10)
                        .background(.white)
                        .cornerRadius(20)
                        .padding(.horizontal, 3)
                    
                    Text("Slife of Life")
                        .font(.subheadline)
                        .padding(10)
                        .background(.white)
                        .cornerRadius(20)
                }
                .padding(.bottom)
            }else if(status == "Actors"){
                HStack{
                    Text("Bin Jun Ho")
                        .font(.subheadline)
                        .padding(10)
                        .background(.white)
                        .cornerRadius(20)
                    
                    Text("Kim Jong Un")
                        .font(.subheadline)
                        .padding(10)
                        .background(.white)
                        .cornerRadius(20)
                        .padding(.horizontal, 3)
                    
                    Text("Seong Kyeong")
                        .font(.subheadline)
                        .padding(10)
                        .background(.white)
                        .cornerRadius(20)
                }
                .padding(.vertical, 5)
                
                HStack{
                    Text("Hyeng")
                        .font(.subheadline)
                        .padding(10)
                        .background(.white)
                        .cornerRadius(20)
                    
                    Text("Hyeung")
                        .font(.subheadline)
                        .padding(10)
                        .background(.white)
                        .cornerRadius(20)
                        .padding(.horizontal, 3)
                    
                    Text("Hong Jo")
                        .font(.subheadline)
                        .padding(10)
                        .background(.white)
                        .cornerRadius(20)
                }
                .padding(.bottom)
            }else{
                HStack{
                    Text("Romance")
                        .font(.subheadline)
                        .padding(10)
                        .background(.white)
                        .cornerRadius(20)
                    
                    Text("Comedy")
                        .font(.subheadline)
                        .padding(10)
                        .background(.white)
                        .cornerRadius(20)
                        .padding(.horizontal, 10)
                    
                    Text("Horror")
                        .font(.subheadline)
                        .padding(10)
                        .background(.white)
                        .cornerRadius(20)
                }
                .padding(.vertical, 5)
                
                HStack{
                    Text("Sam Jong")
                        .font(.subheadline)
                        .padding(10)
                        .background(.white)
                        .cornerRadius(20)
                    
                    Text("Jang Nam")
                        .font(.subheadline)
                        .padding(10)
                        .background(.white)
                        .cornerRadius(20)
                        .padding(.horizontal, 10)
                    
                    Text("Kyeong Hyeong")
                        .font(.subheadline)
                        .padding(10)
                        .background(.white)
                        .cornerRadius(20)
                }
                .padding(.bottom)
            }
            
        }
        .background(Color("Light Gray"))
        .cornerRadius(20)
        .padding(10)
    }
}

struct GenresActorsListCardView_Previews: PreviewProvider {
    static var previews: some View {
        GenresActorsListCardView(status: "Interests")
    }
}
