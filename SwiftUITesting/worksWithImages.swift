//
//  worksWithImages.swift
//  SwiftUITesting
//
//  Created by Nureddin Elmas on 2021-12-15.
//

import SwiftUI

struct worksWithImages: View {
    var myImage : Image
    var body: some View {
            myImage
            .resizable()
            .scaledToFit()
            .frame(width: UIScreen.main.bounds.width * 0.2, height: UIScreen.main.bounds.height * 0.1, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct worksWithImages_Previews: PreviewProvider {
    static var previews: some View {
        worksWithImages(myImage: Image("mjölby"))
    }
}
