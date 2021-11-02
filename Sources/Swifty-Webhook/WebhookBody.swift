//
//  WebhookBody.swift
//  Swifty Webhook
//
//  Created by Noah Pistilli on 2021-11-01.
//

import Foundation

public struct WebhookBody: Encodable {
    public let content: String?
    public let username: String?
    public let avatarUrl: String?
    public let tts: Bool?
    public let embeds: [Embed]?
    public let allowedMentions: AllowedMentions?
    public let components: Components?
    
    public init() {
        self.content = ""
        self.username = nil
        self.avatarUrl = nil
        self.tts = false
        self.embeds = nil
        self.allowedMentions = nil
        self.components = nil
    }
}
