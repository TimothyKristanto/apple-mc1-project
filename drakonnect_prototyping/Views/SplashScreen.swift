//
//  SplashScreen.swift
//  drakonnect_prototyping
//
//  Created by Timothy on 04/04/23.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        VStack{
            Image("drakonnect_logo_with_bg")
                .resizable()
                .scaledToFit()
                .frame(width: Constants.screenWidth / 1.5)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Blue Theme"))
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
