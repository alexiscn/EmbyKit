//
//  UserConfiguration.swift
//  
//
//  Created by alexis on 2022/4/17.
//

import Foundation


public struct UserConfiguration: Codable {
    
    enum CodingKeys: String, CodingKey {
        case audioLanguagePreference = "AudioLanguagePreference"
        case displayMissingEpisodes = "DisplayMissingEpisodes"
        case enableLocalPassword = "EnableLocalPassword"
        case enableNextEpisodeAutoPlay = "EnableNextEpisodeAutoPlay"
        case hidePlayedInLatest = "HidePlayedInLatest"
        case latestItemsExcludes = "LatestItemsExcludes"
        case orderedViews = "OrderedViews"
        case playDefaultAudioTrack = "PlayDefaultAudioTrack"
        case rememberAudioSelections = "RememberAudioSelections"
        case rememberSubtitleSelections = "RememberSubtitleSelections"
        case subtitleLanguagePreference = "SubtitleLanguagePreference"
        case subtitleMode = "SubtitleMode"
    }
    
    public var audioLanguagePreference = ""
    public var displayMissingEpisodes = false
    public var enableLocalPassword = false
    public var enableNextEpisodeAutoPlay = true
    public var hidePlayedInLatest = true
    public var latestItemsExcludes: [String] = []
    public var orderedViews: [String] = []
    public var playDefaultAudioTrack = true
    public var rememberAudioSelections = true
    public var rememberSubtitleSelections = true
    public var subtitleLanguagePreference = "zh-CN"
    public var subtitleMode = "Default"
    
    public init() {
        
    }
}
