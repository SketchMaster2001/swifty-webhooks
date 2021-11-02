//
//  AllowedMentions.swift
//  Swifty Webhooks
//
//  Created by Noah Pistilli on 2021-11-02.
//

import Foundation

public enum MentionTypes: String, Encodable {
    case roles = "roles"
    case users = "users"
    case everyone = "everyone"
}

public struct AllowedMentions: Encodable {
    public let parse: [MentionTypes]?
    public let roles: [String]?
    public let users: [String]?
    public let repliedUser: Bool?
}
