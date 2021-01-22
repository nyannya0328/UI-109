//
//  HomeViewModel.swift
//  UI-109
//
//  Created by にゃんにゃん丸 on 2021/01/22.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    
    @Published var alubums = [
     album(name: "A", ahthor: "1", image: "p1"),
     album(name: "B", ahthor: "2", image: "p2"),
     album(name: "C", ahthor: "3", image: "p3"),
     album(name: "D", ahthor: "4", image: "p4"),
     album(name: "E", ahthor: "5", image: "p5"),
     album(name: "F", ahthor: "6", image: "p6"),
     album(name: "G", ahthor: "7", image: "p7"),
     album(name: "H", ahthor: "8", image: "p8"),
     album(name: "I", ahthor: "9", image: "p9"),
     album(name: "J", ahthor: "10", image: "p10"),
     album(name: "K", ahthor: "11", image: "p11"),
     album(name: "L", ahthor: "12", image: "p12"),
     album(name: "M", ahthor: "13", image: "p13"),
    ]
}

