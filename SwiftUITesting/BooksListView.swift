//
//  BooksListView.swift
//  SwiftUITesting
//
//  Created by Nureddin Elmas on 2021-12-15.
//

import SwiftUI

struct BooksListView: View {
    var body: some View {
        
//        List{
//            ForEach(books){element in
//                Section {
//                    ForEach(element.details, id: \.self){mybook in
//                        Text(mybook)
//                    }
//                } header: {
//                    Text(element.name)
//                }
//
//
//
//            }
//        }
        
        
//        List(books){element in
//            Text(element.name)
//
//        }}
      
        NavigationView{
            
        
        List {
            Section {
                ForEach(books){element in
                    NavigationLink {
                        MyBooksDetailsView(chosenBook: element)
                    } label: {
                        Text(element.name)
                    }
                }
            } header: {
                HStack{
                    worksWithImages(myImage: Image("göteborg"))
                    Text("My Books").font(.system(size: 24)).padding()
                }
              
            }
        }
            
        }.background(in: Circle())
    }
}

struct BooksListView_Previews: PreviewProvider {
    static var previews: some View {
        BooksListView()
    }
}
