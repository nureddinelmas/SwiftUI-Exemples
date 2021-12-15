//
//  SecondNavigationView.swift
//  SwiftUITesting
//
//  Created by Nureddin Elmas on 2021-12-15.
//

import SwiftUI

struct SecondNavigationView: View {
    var body: some View {
        VStack{
            Text("Second View")
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }.navigationTitle(Text("Second View"))
       
    }
}

struct SecondNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        SecondNavigationView()
    }
}
