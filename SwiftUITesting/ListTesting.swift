//
//  ListTesting.swift
//  SwiftUITesting
//
//  Created by Nureddin Elmas on 2021-12-15.
//

import SwiftUI

struct ListTesting: View {
    let myArray = ["Nureddin", "Elmas", "Seyma", "Ali Emre", "Sami"]
    var body: some View {
//        List{
//            ForEach(myArray, id: \.self){element in
//                HStack{
//                    worksWithImages(myImage: Image("stockholm"))
//
//                    Text(element).font(.largeTitle)
//                }
//
//
//            }
//        }
        
        
        List(myArray, id: \.self){element in
                            HStack{
                                worksWithImages(myImage: Image("stockholm")).padding()
            
                                Text(element).font(.largeTitle)
                            }
        }
    }
}

struct ListTesting_Previews: PreviewProvider {
    static var previews: some View {
        ListTesting()
    }
}
