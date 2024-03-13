//
//  ServerInfoResponse.swift
//  
//
//  Created by alexis on 2022/3/28.
//

import Foundation

public struct ServerInfoResponse: Codable, Hashable, Sendable {
    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case localAddress = "LocalAddress"
        case serverName = "ServerName"
        case version = "Version"
        case wanAddress = "WanAddress"
    }
 
    public let id: String
    public let localAddress: String?
    public let serverName: String?
    public let version: String?
    public let wanAddress: String?
}
