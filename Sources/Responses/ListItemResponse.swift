//
//  ListItemResponse.swift
//  
//
//  Created by alexis on 2022/3/28.
//

import Foundation

public struct ListItemResponse: Codable, Sendable {
    enum CodingKeys: String, CodingKey {
        case items = "Items"
        case totalRecordCount = "TotalRecordCount"
    }
    public let items: [EmbyItem]
    public let totalRecordCount: Int
}
