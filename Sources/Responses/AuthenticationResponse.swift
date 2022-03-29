//
//  AuthenticationResponse.swift
//  
//
//  Created by alexis on 2022/3/28.
//

import Foundation

public struct AuthenticationResponse: Codable {
    enum CodingKeys: String, CodingKey {
        case user = "User"
        case sessionInfo = "SessionInfo"
        case accessToken = "AccessToken"
        case serverID = "ServerId"
    }
    public let user: EmbyUser
    public let sessionInfo: SessionInfo?
    public let accessToken: String?
    public let serverID: String?
}
