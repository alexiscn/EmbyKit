//
//  UpdateFavoriteStatusResponse.swift
//
//
//  Created by alexis on 2023/12/16.
//

import Foundation

public struct UpdateFavoriteStatusResponse: Codable {
    
    public enum CodingKeys: String, CodingKey {
        case isFavorite = "IsFavorite"
        case playCount = "PlayCount"
        case playbackPositionTicks = "PlaybackPositionTicks"
        case unPlayedItemCount = "UnplayedItemCount"
        case played = "Played"
    }
    
    public var isFavorite: Bool
    
    public var playCount: Int
    
    public var playbackPositionTicks: Int64
    
    public var played: Bool
    
    public var unPlayedItemCount: Int
    
}
