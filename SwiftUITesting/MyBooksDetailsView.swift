//
//  MyBooksDetailsView.swift
//  SwiftUITesting
//
//  Created by Nureddin Elmas on 2021-12-15.
//

import SwiftUI

struct MyBooksDetailsView: View {
    @State var chosenBook : Books
    
    var body: some View {
      
        List{
            Section {
                ForEach(chosenBook.details, id: \.self){element in
                    Text(element)
                    
                }
            } header: {
                Text(chosenBook.name)
            }

        }

        
    }
}

struct MyBooksDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MyBooksDetailsView(chosenBook: kendiniaffet)
    }
}
