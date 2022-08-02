//
//  RecommendationsResponse.swift
//  
//
//  Created by alexis on 2022/8/2.
//

import Foundation

public typealias RecommendationsResponse = [RecommendationSection]

public struct RecommendationSection: Codable {
    
    public enum CodingKeys: String, CodingKey {
        case baselineItemName = "BaselineItemName"
        case categoryId = "CategoryId"
        case items = "Items"
        case recommendationType = "RecommendationType"
    }
    
    public let baselineItemName: String?
    
    public let categoryId: Int?
    
    public let items: [EmbyItem]?
    
    public let recommendationType: String?
}
