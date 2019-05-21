//
//  NetworkCoreConfiguration.swift
//  QSNetworkCore
//
//  Created by Ivanov Evgeniy on 21/05/2019.
//

import Foundation

public struct NetworkCoreConfiguration {
    public static let defaultRequestTimeout: TimeInterval = 30
    public static let defaultResourceTimeout: TimeInterval = 120
    
    public let baseURL: URL
    public let requestTimeout: TimeInterval
    public let resourceTimeout: TimeInterval
    
    public init(baseURL: URL, requestTimeout: TimeInterval = NetworkCoreConfiguration.defaultRequestTimeout, resourceTimeout: TimeInterval = NetworkCoreConfiguration.defaultResourceTimeout) {
        self.baseURL = baseURL
        self.requestTimeout = requestTimeout
        self.resourceTimeout = resourceTimeout
    }
}
