//
//  ItemTypeResponse.swift
//  
//
//  Created by alexis on 2022/3/28.
//

import Foundation

public struct ItemTypeResponse: Codable {
    
    public struct Item: Codable {
        enum CodingKeys: String, CodingKey {
            case name = "Name"
        }
        public let name: String
    }
    
    enum CodingKeys: String, CodingKey {
        case items = "Items"
        case totalRecordCount = "TotalRecordCount"
    }
    
    public let items: [Item]
    public let totalRecordCount: Int
}
