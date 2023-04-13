//
//  SelectGenresView.swift
//  drakonnect_prototyping
//
//  Created by Timothy on 05/04/23.
//

import SwiftUI

struct SelectGenresView: View {
    @State var searchGenre = ""
    
    @Binding var selector: String
    
    var genres: [String] = [
        "Action",
        "Adventure",
        "Fantasy",
        "Horror",
        "Thriller",
        "Comedy",
        "Romance",
        "Fighting",
        "Historical",
        "School"
    ]
    
    var searchResult: [String] {
        if(searchGenre.isEmpty){
            return genres
        }else{
            return genres.filter{
                return $0.contains(searchGenre)
            }
        }
    }
    
    var body: some View {
        NavigationView{
            VStack{
                List{
                    ForEach(searchResult, id: \.self){ genre in
                        SingleGenreActorRow(name: genre)
                    }
                }
            }
            .navigationTitle("Select Genres")
            .toolbar{
                Button{
                    withAnimation{
                        selector = "actors"
                    }
                }label: {
                    HStack{
                        Text("Next")
                        
                        Image(systemName: "chevron.right")
                            .resizable()
                            .scaledToFit()
                    }
                }
            }
        }
        .searchable(text: $searchGenre)
    }
}

struct SelectGenresView_Previews: PreviewProvider {
    static var previews: some View {
        SelectGenresView(selector: .constant("genres"))
    }
}
