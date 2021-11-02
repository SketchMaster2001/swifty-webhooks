//
//  File.swift
//  File
//
//  Created by Noah Pistilli on 2021-11-01.
//

import Foundation

public struct WebhookBody: Encodable {
    public var content: String?
    public var embeds: [Embed]?
    
    public init() {
        self.content = ""
        self.embeds = nil
    }
}
