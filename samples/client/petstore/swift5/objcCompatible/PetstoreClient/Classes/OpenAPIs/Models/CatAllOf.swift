//
// CatAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@objc public class CatAllOf: NSObject, Codable {

    public var declawed: Bool?
    public var declawedNum: NSNumber? {
        get {
            return declawed as NSNumber?
        }
    }

    public init(declawed: Bool? = nil) {
        self.declawed = declawed
    }

}
