//
//  Books.swift
//  SwiftUITesting
//
//  Created by Nureddin Elmas on 2021-12-15.
//

import Foundation
import SwiftUI

struct Books: Identifiable {
    var id = UUID()
    var name : String
    var details : [String]
    
    
}

let kendiniaffet = Books(name: "Kendini Affet", details: ["Adem Gunes", "2021", "Cok iyi bir kitap"])

let birakverahatla = Books(name: "Birak ve Rahatla", details: ["Adem Gunes", "2020", "Birakmaniz icin guzel bir kitap"])

let myLife = Books(name: "My Life", details: ["Nureddin Elmas", "2021", "Benim ilk kitabim"])

let books = [kendiniaffet, birakverahatla, myLife]
