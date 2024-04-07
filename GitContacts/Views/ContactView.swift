//
//  ContactView.swift
//  GitContacts
//
//  Created by Salvo on 04/04/24.
//

import SwiftUI

struct ContactView: View {
    
    @StateObject var contactViewModel = ContactViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView{
                ForEach(contactViewModel.contacts, id: \.self) { contact in
                    
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
    ContactView()
}
