//
//  Embed.swift
//  Swifty Webhook
//
//  Created by Noah Pistilli on 2021-11-01.
//

import Foundation

public struct Embed: Encodable {
    /// Author dictionary from embed
    public var author: Author?
  
    /// Side panel color of embed
    public var color: Int?
  
    /// Description of the embed
    public var description: String?
  
    /// Fields for the embed
    public var fields: [Field]?
  
    /// Footer dictionary from embed
    public var footer: Footer?
  
    /// Image data from embed
    public var image: Image?
  
    /// Provider from embed
    public var provider: Provider?
  
    /// Thumbnail data from embed
    public var thumbnail: Thumbnail?
  
    /// Title of the embed
    public var title: String?
  
    /// Type of embed :: It will always be rich even if we try and set it otherwise
    public var type: String
  
    /// URL of the embed
    public var url: String?
  
    /// Video data from embed
    public var video: Video?
    
    // MARK: Initializers
    
    /// Creates an Embed Structure
    public init() {
      self.provider = nil
      self.type = "rich"
      self.video = nil
    }
    
    
    /**
     Adds a field to the embed
     
     - parameter name: Name to give field
     - parameter value: Text that will be displayed underneath name
     - parameter inline: Whether or not to keep this field inline with others
    */
    public mutating func addField(
      _ name: String,
      value: String,
      isInline: Bool = false
    ) {
      if self.fields == nil {
        self.fields = [Field]()
      }
      
      self.fields?.append(Field(name: name, value: value, isInline: isInline))
    }
}

extension Embed {
    public struct Author: Encodable {
        public var iconUrl: String?
        public var name: String
        public var url: String?
        
        public init(iconUrl: String? = nil, name: String, url: String? = nil) {
          self.iconUrl = iconUrl
          self.name = name
          self.url = url
        }
    }
    
    public struct Field: Encodable {
        public var name: String
        public var value: String
        public var isInline: Bool
        
        public init(name: String = "", value: String = "", isInline: Bool = true) {
            self.name = name
            self.value = value
            self.isInline = isInline
        }
    }
    
    public struct Footer: Encodable {
        public var iconUrl: String?
        public var proxyIconUrl: String?
        public var text: String
        
        public init(
          text: String,
          iconUrl: String? = nil,
          proxyIconUrl: String? = nil
        ) {
          self.text = text
          self.iconUrl = iconUrl
          self.proxyIconUrl = proxyIconUrl
        }
    }
    
    public struct Image: Encodable {
        public var height: Int
        public var proxyUrl: String
        public var url: String
        public var width: Int
        
        public init(height: Int, proxyUrl: String, url: String, width: Int) {
          self.height = height
          self.proxyUrl = proxyUrl
          self.url = url
          self.width = width
        }
    }
    
    public struct Provider: Encodable {
        public var name: String
        public var url: String?
        
        public init(name: String, url: String? = nil) {
          self.name = name
          self.url = url
        }
    }
    
    public struct Thumbnail: Encodable {
        public var height: Int
        public var proxyUrl: String
        public var url: String
        public var width: Int
        
        public init(height: Int, proxyUrl: String, url: String, width: Int) {
          self.height = height
          self.proxyUrl = proxyUrl
          self.url = url
          self.width = width
        }
    }
    
    public struct Video: Encodable {
        public var height: Int
        public var url: String
        public var width: Int
        
        public init(height: Int, url: String, width: Int) {
            self.height = height
            self.url = url
            self.width = width
        }
    }
}
