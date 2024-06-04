//
//  CreatePasswordView.swift
//  Instagram
//
//  Created by Kyle Modina on 5/24/24.
//

import SwiftUI

struct CreatePasswordView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegistrationViewModel
    
    
    var body: some View {
        VStack(spacing: 12) {
            Text("Create a password")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Your password must be at least 6 characters in length")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            SecureField("Password", text: $viewModel.password)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
                .padding(.top)
            
            NavigationLink {
                CompleteSignUpView()
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            }
            .padding(.vertical)
            
            
            Spacer()
        }
        
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
        
    }
    
}

struct CreatePasswordView_Previews: PreviewProvider{
    static var previews: some View {
        CreatePasswordView()
    }
}
