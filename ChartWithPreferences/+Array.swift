//
//  +Array.swift
//  Sentimental
//
//  Extend Array to facilitate storing results of message scores, with timestamp
//  Source: https://stackoverflow.com/a/65598711/1655567
//
//  Created by Konrad on 14/07/2024.
//

import Foundation

extension Array: RawRepresentable where Element: Codable {
    public init?(rawValue: String) {
        guard let data = rawValue.data(using: .utf8),
              let result = try? JSONDecoder().decode([Element].self, from: data)
        else {
            return nil
        }
        self = result
    }

    public var rawValue: String {
        guard let data = try? JSONEncoder().encode(self),
              let result = String(data: data, encoding: .utf8)
        else {
            return "[]"
        }
        return result
    }
}
