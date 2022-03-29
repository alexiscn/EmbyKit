//
//  EmbyError.swift
//  
//
//  Created by alexis on 2022/3/23.
//

import Foundation
import Just

public enum EmbyError: LocalizedError {
    case serverError(String)
    case jsonDecodeError(HTTPResult)
    
    public var errorDescription: String? {
        switch self {
        case .serverError(let message):
            return message
        case .jsonDecodeError(let result):
            #if DEBUG
            return "JSON Decode Error: \(result.text ?? "")"
            #else
            return "JSON Decode Error"
            #endif
        }
    }
}
