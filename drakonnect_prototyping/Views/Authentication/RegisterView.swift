//
//  RegisterView.swift
//  drakonnect_prototyping
//
//  Created by Timothy on 04/04/23.
//

import SwiftUI

struct RegisterView: View {
    @Binding var hasRegister: Bool
    
    @State var email: String = ""
    @State var username: String = ""
    @State var password: String = ""
    @State var confirmPassword: String = ""
    @State var passVisible: Bool = false
    @State var rePassVisible: Bool = false
    
    var body: some View {
        NavigationView{
            VStack(){
                
                HStack{
                    Image("drakonnect_logo_with_bg")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.size.width / 2.5)
                }
                .padding(.top, 30)
                
                HStack{
                    Text("Welcome to")
                        .font(.system(size: 22, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    Text("DRAKO-NNECT")
                        .font(.system(size: 22, design: .rounded))
                        .fontWeight(.heavy)
                        .foregroundColor(Color("Blue Theme"))
                }
                .padding(EdgeInsets(top: 20, leading: 0, bottom: 0.5, trailing: 0))
                
                HStack{
                    Text("Please register yourself to continue")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.bottom, Constants.screenHeight / 16)
                
                HStack{
                    Image(systemName: "envelope.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20)
                        .foregroundColor(Color("Blue Theme"))
                    
                    TextField("Email", text: $email)
                }
                .padding()
                .background(Color(hue: 1.0, saturation: 0.001, brightness: 0.932))
                .cornerRadius(10)
                .padding(.bottom, 5)
                
                HStack{
                    Image(systemName: "person.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 18)
                        .foregroundColor(Color("Blue Theme"))
                    
                    TextField("Username", text: $username)
                }
                .padding()
                .background(Color(hue: 1.0, saturation: 0.001, brightness: 0.932))
                .cornerRadius(10)
                .padding(.bottom, 5)
                
                HStack{
                    Image(systemName: "key.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 14)
                        .foregroundColor(Color("Blue Theme"))
                    
                    if(passVisible){
                        TextField("Password", text: $password)
                    }else{
                        SecureField("Password", text: $password)
                    }
                    
                    Spacer()
                    
                    Button{
                        passVisible.toggle()
                    }label: {
                        if(passVisible){
                            Image(systemName: "eye.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25)
                                .foregroundColor(Color("Blue Theme"))
                        }else{
                            Image(systemName: "eye.slash.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25)
                                .foregroundColor(Color("Blue Theme"))
                        }
                    }
                    
                }
                .padding()
                .background(Color(hue: 1.0, saturation: 0.001, brightness: 0.932))
                .cornerRadius(10)
                .padding(.bottom, 5)
                
                HStack{
                    Image(systemName: "key")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 14)
                        .foregroundColor(Color("Blue Theme"))
                    
                    if(rePassVisible){
                        TextField("Re-enter Password", text: $confirmPassword)
                    }else{
                        SecureField("Re-enter Password", text: $confirmPassword)
                    }
                    
                    Spacer()
                    
                    Button{
                        rePassVisible.toggle()
                    }label: {
                        if(rePassVisible){
                            Image(systemName: "eye.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25)
                                .foregroundColor(Color("Blue Theme"))
                        }else{
                            Image(systemName: "eye.slash.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25)
                                .foregroundColor(Color("Blue Theme"))
                        }
                    }
                }
                .padding()
                .background(Color(hue: 1.0, saturation: 0.001, brightness: 0.932))
                .cornerRadius(10)
                
                Spacer()
                
                Button(){
                    withAnimation{
                        hasRegister = true
                    }
                } label: {
                    Text("Sign Up")
                        .padding()
                        .padding(.horizontal, 10)
                        .bold()
                        .background(Color(hue: 1.0, saturation: 0.001, brightness: 0.932))
                        .foregroundColor(Color("Blue Theme"))
                        .clipShape(Capsule())
                }
                
                Spacer()
                
            }
            .padding([.horizontal], 20)
            .background(Color(hue: 1.0, saturation: 0.009, brightness: 1.0))
            
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView(hasRegister: .constant(false))
    }
}
