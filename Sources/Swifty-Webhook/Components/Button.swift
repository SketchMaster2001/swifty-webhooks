//
//  Button.swift
//  Swifty Webhook
//
//  Created by Noah Pistilli on 2021-11-02.
//

import Foundation

public enum ButtonStyles: Int, Encodable {
    case blurple = 1, grey, green, red, url
}

public struct Button: Encodable {
    public let type: ComponentTypes
    public let customId: String
    public let disabled: Bool?
    public let style: ButtonStyles?
    public let label: String
    // TODO: Emojis
    public let url: String?
    
    public init(customId: String, disabled: Bool?, style: ButtonStyles?, label: String, url: String?) {
        self.type = .button
        self.customId = customId
        self.disabled = disabled ?? false
        self.style = style ?? .blurple
        self.label = label
        self.url = url
    }
}
