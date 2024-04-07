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
            
            await MainActor.run{
                self.contacts?.append(
                    Contact(
                        id: json["id"].stringValue,
                        username: json["login"].stringValue,
                        name: json["name"].stringValue,
                        avatarURL: json["avatar_url"].stringValue,
                        githubLink: json["html_url"].stringValue,
                        repoLink: json["repos_url"].stringValue,
                        company: json["company"].stringValue,
                        blog: json["blog"].stringValue,
                        location: json["location"].stringValue,
                        followers: json["followers"].intValue,
                        following: json["following"].intValue,
                        email: json["email"].stringValue,
                        bio: json["bio"].stringValue,
                        accountCreation: json["created_at"].stringValue
                    )
                )
            }
             
        }catch{
            print("error 1 in getting new user")
        }
        
    }
    
}
