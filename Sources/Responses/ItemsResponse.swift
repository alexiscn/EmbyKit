//
//  ItemsResponse.swift
//  
//
//  Created by alexis on 2022/3/28.
//

import Foundation

public struct ItemsResponse: Codable {
    enum CodingKeys: String, CodingKey {
        case items = "Items"
        case count = "TotalRecordCount"
    }
    public let items: [EmbyItem]
    public let count: Int
    
    public init(items: [EmbyItem], count: Int) {
        self.items = items
        self.count = count
    }
}
