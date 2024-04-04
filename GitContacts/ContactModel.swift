//
//  ContactModel.swift
//  GitContacts
//
//  Created by Salvo on 03/04/24.
//

import Foundation

struct Contact: Identifiable, Codable{
    
    var id: UUID = UUID()
    var username: String
    var name: String
    var avatarURL: URL
    var githubLink: URL
    var repoLink: URL
    var company: URL
    var blog: URL
    var location: URL
    var followers: Int
    var following: Int
    var email: String
    var bio: String
    var accountCreation: String
}
