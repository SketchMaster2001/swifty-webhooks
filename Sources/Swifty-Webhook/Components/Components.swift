//
//  Components.swift
//  Sword
//
//  Created by Noah Pistilli on 2021-11-02.
//

import Foundation

public enum ComponentTypes: Int, Encodable {
    case actionRow = 1, button, selectMenu
}

public struct Components: Encodable {
    public let type: ComponentTypes
    public let components: [Button]
    
    public init(components: [Button]) {
        self.type = .actionRow
        self.components = components
    }
}
