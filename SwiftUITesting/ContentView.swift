//
//  ContentView.swift
//  SwiftUITesting
//
//  Created by Nureddin Elmas on 2021-12-14.
//

import SwiftUI

struct ContentView: View {
    @State var listan = ["first", "andra", "trädje", "fjärde", "femte", "sjätte"]
    
    @State var writing : String = ""
    @State var image : String = "Stockholm"
    @State var kontrol = false
    var body: some View {
       
        VStack{
            List(){
                ForEach(listan, id: \.self) {list in
                    HStack{
                       
                        Image(image)
                            .resizable()
                            .frame(width: 50, height: 50, alignment: .center)
                            .scaledToFit()
                        Text(list)
                    }
                    
                }
            }
            
            TextField("UserName", text: $writing).padding().border(.blue).frame(width: 200, height: 50, alignment: .center)
            
            ZStack{
                Circle().frame(width: 50, height: 50, alignment: .center)
                Image(image)
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .scaledToFit()
            }
            
            Text(writing)
            Button {
                self.listan.append(writing)
                if kontrol{
                    image = "göteborg"
                    writing = "Göteborg"
                    self.kontrol = false
                }else{
                    image = "malmö"
                    writing = "Malmö"
                    self.kontrol = true
                }
               
            } label: {
                Text("Submit").padding()
            }
        }
       

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

