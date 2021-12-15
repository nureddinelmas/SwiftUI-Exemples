//
//  CollectionViewTesting.swift
//  SwiftUITesting
//
//  Created by Nureddin Elmas on 2021-12-14.
//

import SwiftUI

struct CollectionViewTesting: View {
    let columns = [GridItem(.flexible()),
                  GridItem(.flexible()),
                  GridItem(.flexible())]
    
    let names = ["Nureddin", "Elmas", "Seyma", "Ali Emre", "Sami", "Lena", "Gunnil", "Johnny", "Johnny"]
    
    var body: some View {
        
        ScrollView {
            Text("Welcome to My Sida").font(.largeTitle).background(Color.white).padding()
            LazyVGrid (columns: columns){
              
                ForEach(names, id: \.self){name in
                    VStack{
                        Color.orange.frame(width: UIScreen.main.bounds.width / 3.5, height: 100, alignment: .center)
                        Text(name)
                       worksWithImages(myImage: Image("stockholm"))
                    }
                }
            }.padding()
        }.background(Color.white)
    }
}

struct CollectionViewTesting_Previews: PreviewProvider {
    static var previews: some View {
        CollectionViewTesting()
    }
}
