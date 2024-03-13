//
//  MediaSourcesResponse.swift
//  
//
//  Created by alexis on 2022/3/28.
//

import Foundation

public struct MediaSourcesResponse: Codable, Sendable {
    enum CodingKeys: String, CodingKey {
        case mediaSources = "MediaSources"
        case playSessionId = "PlaySessionId"
    }
    public let mediaSources: [MediaSourceInfo]
    public let playSessionId: String?
}
