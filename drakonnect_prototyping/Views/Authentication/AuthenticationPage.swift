//
//  AuthenticationPage.swift
//  drakonnect_prototyping
//
//  Created by Timothy on 05/04/23.
//

import SwiftUI

struct AuthenticationPage: View {
    @State private var hasRegister: Bool = false
    
    var body: some View {
        VStack{
            if(hasRegister){
                SelectionPage()
            }else{
                RegisterView(hasRegister: $hasRegister)
            }
        }
    }
}

struct AuthenticationPage_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationPage()
    }
}
