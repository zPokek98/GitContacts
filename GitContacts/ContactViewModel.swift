//
//  ContactViewModel.swift
//  GitContacts
//
//  Created by Salvo on 03/04/24.
//

import Foundation
import SwiftyJSON

class ContactViewModel: ObservableObject{
    
    @Published var contacts: [Contact]?
    
    func getNewUser(name: String) async {
        
        guard let url = URL(string: "https://api.github.com/users/\(name)")
        else {
            print ("error url")
            return
        }
        
        var request = URLRequest(url: url)
        
        request.httpMethod = "GET"
        
        do{
            let (data, _) = try await URLSession.shared.data(for: request)
            let json = JSON(data)
            /*
            var contact = Contact(
            )
            await MainActor.run{
                self.contacts?.append()
            }
             */
        }catch{
            print("error 1 in getting new user")
        }
        
    }
    
}
