//
//  ContentView.swift
//  InstagramClone
//
//  Created by Philippe-Antoine Ledoux on 2021-12-31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            TopBar()
            ScrollView{
                Stories()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
