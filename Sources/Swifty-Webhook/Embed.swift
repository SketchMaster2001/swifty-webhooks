//
//  File.swift
//  File
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
}

extension Embed {
    public struct Author: Encodable {
        public var iconUrl: String?
        public var name: String
        public var url: String?
    }
    
    public struct Field: Encodable {
        public var isInline: Bool
        public var name: String
        public var value: String
    }
    
    public struct Footer: Encodable {
      public var iconUrl: String?
      public var proxyIconUrl: String?
      public var text: String
    }
    
    public struct Image: Encodable {
      public var height: Int
      public var proxyUrl: String
      public var url: String
      public var width: Int
    }
    
    public struct Provider: Encodable {
      public var name: String
      public var url: String?
    }
    
    public struct Thumbnail: Encodable {
      public var height: Int
      public var proxyUrl: String
      public var url: String
      public var width: Int
    }
    
    public struct Video: Encodable {
      public var height: Int
      public var url: String
      public var width: Int
    }
}
