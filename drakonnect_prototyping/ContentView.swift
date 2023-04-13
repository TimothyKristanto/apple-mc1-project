//
//  ContentView.swift
//  drakonnect_prototyping
//
//  Created by Timothy on 03/04/23.
//

import SwiftUI

struct ContentView: View {
    @State var hasDone: Bool = false
    
    var body: some View {
        VStack{
            if(hasDone){
                AuthenticationPage()
            }else{
                SplashScreen()
            }
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                withAnimation{
                    hasDone = true
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
