//
//  ProfileView.swift
//  ToDoList
//
//  Created by Tran Minh Thien on 28/6/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    var body: some View {
        NavigationView {
            VStack {
                if let user = viewModel.user {
                    profile(user: user)
                } else {
                    Text("Loading profile ...")
                }
               
                
            }
            .navigationTitle("Profile")
        }
        .onAppear {
            viewModel.fetchUser()
        }
    }
    @ViewBuilder
    func profile(user: User) -> some View {
        // Avatar
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .foregroundStyle(Color.blue)
            .frame(width: 125, height: 125)
            .padding()
        // Info: Name, Email, Member since
        
        VStack(alignment: .leading) {
            HStack {
                Text("Name: ")
                Text(user.name)
            }
            HStack {
                Text("Email: ")
                Text(user.email)
            }
            HStack {
                Text("Member since: ")
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
            }
        }
        
        // Sign out
        Button("Log out") {
            viewModel.logout()
        }
        .foregroundStyle(Color.red)
        .padding()
    }
}

#Preview {
    ProfileView()
}
