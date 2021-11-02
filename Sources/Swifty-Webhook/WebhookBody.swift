//
//  File.swift
//  File
//
//  Created by Noah Pistilli on 2021-11-01.
//

import Foundation

public struct WebhookBody: Encodable {
    let content: String?
    let embeds: [Embed]?
}
