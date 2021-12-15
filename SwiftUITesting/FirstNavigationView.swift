//
//  FirstNavigationView.swift
//  SwiftUITesting
//
//  Created by Nureddin Elmas on 2021-12-15.
//

import SwiftUI

struct FirstNavigationView: View {
    var body: some View {
        NavigationView {
        VStack{
            worksWithImages(myImage: Image("malmö"))
            
            Button {
                print("tiklandi")
            } label: {
                Text("Go ->")
            }
            NavigationLink(destination: SecondNavigationView()) {
                Text("Navigation Link ->")
            }.padding()
        }.navigationTitle(Text("Home"))
        }
}
}

struct FirstNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        FirstNavigationView()
    }
}
