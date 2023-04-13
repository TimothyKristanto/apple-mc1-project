//
//  CreateDiscussionModal.swift
//  drakonnect_prototyping
//
//  Created by Timothy on 11/04/23.
//

import SwiftUI

struct CreateDiscussionModal: View {
    @State var discussion: String = "Enter your discussion here..."
    @State var showConfirmationDialog: Bool = false
    @Binding var showCreateDiscussionModal: Bool
    
    var body: some View {
        VStack{
            HStack{
                Button{
                    showConfirmationDialog = true
                }label: {
                    Text("Cancel")
                }
                .confirmationDialog("Are you sure you want to stop editing?", isPresented: $showConfirmationDialog) {
                    Button("Stop", role: .destructive){
                        showCreateDiscussionModal = false
                        showConfirmationDialog = false
                    }
                }
                
                Spacer()
                
                Button{
                    showCreateDiscussionModal = false
                }label: {
                    Text("Create")
                }
            }
            .padding(.horizontal, 15)
            .padding(.top, 20)
            
            Spacer()
            
            Text("Add your discussion")
                .font(.title)
                .bold()
                .padding(.bottom, 5)
            
            TextEditor(text: $discussion)
                .padding([.bottom, .horizontal, .top], 15)
                .background(.white)
                .cornerRadius(20)
                .lineLimit(3)
                .padding()
                .frame(height: Constants.screenHeight / 2)
            
            Spacer()
        }
        .background(Color("Light Gray"))
        .frame(width: Constants.screenWidth)
        .interactiveDismissDisabled(true)
    }
}

struct CreateDiscussionModal_Previews: PreviewProvider {
    static var previews: some View {
        CreateDiscussionModal(showCreateDiscussionModal: .constant(true))
    }
}
