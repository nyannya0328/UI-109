//
//  ContentView.swift
//  UI-109
//
//  Created by にゃんにゃん丸 on 2021/01/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
            Home()
                .preferredColorScheme(.dark)
                .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
