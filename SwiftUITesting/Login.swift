//
//  Login.swift
//  SwiftUITesting
//
//  Created by Nureddin Elmas on 2021-12-14.
//

import SwiftUI

struct Login: View {
    @State var userName = ""
    @State var password = ""
    @State var isShowing = false
    var body: some View {
        VStack{
            Text("Welcome to Login ").font(.largeTitle)
            Form {
                HStack{
                    Text("User Name:")
                    TextField(text: $userName, prompt: Text("Required")){
                        Text("User Name")
                    }.disableAutocorrection(true)
                        .textFieldStyle(.roundedBorder)
                }
                HStack{
                    Text("Password")
                    TextField(text: $password, prompt: Text("Required")) {
                        Text("Password")
                    }.textFieldStyle(.roundedBorder)
                }
            }
            Button {
                isShowing = true
            } label: {
                Text("Submit")
            }.padding()
            
            if isShowing == true {
                Text(userName).padding()
                Text(password).padding()
            }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
