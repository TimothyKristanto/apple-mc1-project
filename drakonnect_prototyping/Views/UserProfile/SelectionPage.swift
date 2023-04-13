//
//  SelectionForm.swift
//  drakonnect_prototyping
//
//  Created by Timothy on 05/04/23.
//

import SwiftUI

struct SelectionPage: View {
    @State var selector: String = "genres"
    
    var body: some View {
        if(selector == "genres"){
            SelectGenresView(selector: $selector)
        }else if(selector == "actors"){
            SelectActorsView(selector: $selector)
        }else if(selector == "done"){
            HomeTab()
        }
    }
}

struct SelectionPage_Previews: PreviewProvider {
    static var previews: some View {
        SelectionPage()
    }
}
