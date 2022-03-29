//
//  DeviceProfileWrapper.swift
//  
//
//  Created by alexis on 2022/3/28.
//

import Foundation

struct DeviceProfileWrapper: Codable {
    enum CodingKeys: String, CodingKey {
        case deviceProfile = "DeviceProfile"
    }
    let deviceProfile: DeviceProfile
}
