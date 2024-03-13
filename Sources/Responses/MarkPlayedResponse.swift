//
//  MarkPlayedResponse.swift
//  
//
//  Created by alexis on 2022/3/28.
//

import Foundation

public struct MarkPlayedResponse: Codable, Sendable {
    enum CodingKeys: String, CodingKey {
        case playbackPositionTicks = "PlaybackPositionTicks"
        case playCount = "PlayCount"
        case isFavorite = "IsFavorite"
        case lastPlayedDate = "LastPlayedDate"
        case played = "Played"
    }
    public let playbackPositionTicks: Int64?
    public let playCount: Int?
    public let isFavorite: Bool?
    public let lastPlayedDate: String?
    public let played: Bool?
}
