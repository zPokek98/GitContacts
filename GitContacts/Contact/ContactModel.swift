//
//  ContactModel.swift
//  GitContacts
//
//  Created by Salvo on 03/04/24.
//

import Foundation

struct Contact: Identifiable, Codable{
    
    var id: String
    var username: String
    var name: String
    var avatarURL: String
    var githubLink: String
    var repoLink: String
    var company: String
    var blog: String
    var location: String
    var followers: Int
    var following: Int
    var email: String
    var bio: String
    var accountCreation: String
}
