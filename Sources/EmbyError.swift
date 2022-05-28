//
//  EmbyError.swift
//  
//
//  Created by alexis on 2022/3/23.
//

import Foundation
import Just

public enum EmbyError: LocalizedError {
    case serverError(HTTPResult)
    case jsonDecodeError(HTTPResult)
    
    public var errorDescription: String? {
        switch self {
        case .serverError(let response):
            if let statusCode = response.statusCode {
                return "\(statusCode) - " + HTTPURLResponse.localizedString(forStatusCode: statusCode)
            }
            return response.text ?? "Unknown Error"
        case .jsonDecodeError(let result):
            #if DEBUG
            return "JSON Decode Error: \(result.text ?? "")"
            #else
            return "JSON Decode Error"
            #endif
        }
    }
}
