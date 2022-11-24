//
//  ProfileView.swift
//  DubDubGrub
//
//  Created by Shahad Bagarish on 16/11/2022.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var companyName = ""
    @State private var bio = ""
    
    
    var body: some View {
        VStack{
            ZStack{
                NameBackground()
                
                HStack (spacing: 16 ){
                    ZStack{
                        AvatarView(size: 84)
                        EditImage()
                    }
                    .padding(.leading, 12)
                    
                    VStack (spacing: 1 ){
                        TextField("First Name", text: $firstName)
//                            .modifier(ProfileNameText()) // MARK: before the extension
                            .ProfileNameStyle()
                        TextField("Last Name", text: $lastName)
                            .ProfileNameStyle()
                        TextField("Company Name", text: $companyName)
                    }
                    .padding(.trailing, 16) // MARK: to not write to the edge of textField
                }
                .padding()
                
                
            }
            VStack (alignment: .leading, spacing: 8 ){
              
                CharactersRemainView(carrentCount: bio.count)
                
                TextEditor(text: $bio)
                    .frame(height: 100)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.secondary, lineWidth: 1 ))
            }
            .padding(.horizontal, 20)
            
            Spacer()
            
            Button {
                
            } label: {
               DDGButton(title: "Create Profile")
            }

        }
        .navigationTitle("Profile")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ProfileView()
        }
    }
}



struct NameBackground: View {
    var body: some View {
        Color(.secondarySystemBackground)
            .frame(height: 130)
            .cornerRadius(12)
            .padding(.horizontal)
    }
}

struct EditImage: View {
    var body: some View {
        Image(systemName: "square.and.pencil")
            .resizable()
            .scaledToFit()
            .frame(width: 14, height: 14)
            .foregroundColor(.white)
            .offset(y: 30)
    }
}

struct CharactersRemainView: View {
    var carrentCount : Int
    
    var body: some View{
        Text("Bio: ")
            .font(.callout)
            .foregroundColor(.secondary)
        +
        Text("\(100 - carrentCount)")
            .font(.callout)
            .foregroundColor(carrentCount <= 100 ? .brandPrimary : Color(.systemPink))
        +
        Text(" Characters Remain")
            .font(.callout)
            .foregroundColor(.secondary)
    }
}
