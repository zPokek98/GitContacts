//
//  ContentView.swift
//  GitContacts
//
//  Created by Salvo on 03/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                NavigationLink(destination: ContactDetailView()) {
                    Text("aaa")
                }
                NavigationLink(destination: ContactDetailView()) {
                    Text("aaa")
                }
            }
            .navigationTitle("Contacts")
            .toolbar(content: {
                Button(action: {
                    
                }, label: {
                    Text("+")
                        .font(.title)
                })
            })
        }
        
    }
}

#Preview {
    ContentView()
}
