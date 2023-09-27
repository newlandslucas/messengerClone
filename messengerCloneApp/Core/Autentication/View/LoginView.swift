//
//  LoginView.swift
//  messengerCloneApp
//
//  Created by Lucas Newlands on 27/09/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                //MARK: Logo image
                Image("messenger-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .padding()
                //MARK: Text fields
                
                VStack(spacing: 12) {
                    TextField("Enter your email", text: $email)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                    
                    SecureField("Enter your password", text: $password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                }
                
                //MARK: forgot password
                
                Button {
                    print("forgot pasword")
                } label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)

                
                //MARK: Login button
                Button {
                    print("login")
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(14)
                }
                .padding(.vertical, 18)

                //MARK: facebook login
                HStack {
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                }
                .foregroundColor(.gray)
                
                HStack {
                    Text("Continue with facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                }
                .padding(.top, 10)
                
                Spacer()
                
                //MARK: Create account
                
                Divider()
                
                NavigationLink {
                    Text("Sign Up View")
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                }
                .padding(.vertical)
            }
        }
        .background(Color(.systemBackground))
        .foregroundColor(.accentColor)
    }
}

#Preview {
    LoginView()
}
