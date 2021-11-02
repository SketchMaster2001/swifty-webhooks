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
    public var parse: [MentionTypes]?
    public var roles: [String]?
    public var users: [String]?
    public var repliedUser: Bool?
}
