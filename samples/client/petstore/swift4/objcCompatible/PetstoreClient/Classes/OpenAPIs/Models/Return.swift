//
// Return.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Model for testing reserved words */

@objc public class Return: NSObject, Codable {

    public var _return: Int?
    public var _returnNum: NSNumber? {
        get {
            return _return as NSNumber?
        }
    }

    public init(_return: Int?) {
        self._return = _return
    }

    public enum CodingKeys: String, CodingKey {
        case _return = "return"
    }

}
