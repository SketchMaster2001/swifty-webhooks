//
//  WebhookBody.swift
//  Swifty Webhook
//
//  Created by Noah Pistilli on 2021-11-01.
//

import Foundation

public struct WebhookBody: Encodable {
    public var content: String?
    public var username: String?
    public var avatarUrl: String?
    public var tts: Bool?
    public var embeds: [Embed]?
    public var allowedMentions: AllowedMentions?
    public var components: Components?
    
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
