//
//  NetworkCore.swift
//  QSNetworkCore
//
//  Created by Ivanov Evgeniy on 21/05/2019.
// 

import Foundation
import Alamofire

open class NetworkCore {
    // setup deault instance for new config
    public private(set) static var defaultConfiguration: NetworkCoreConfiguration? {
        didSet(newDefaultConfig) {
            guard let gNewDefaultConfig = newDefaultConfig else {
                self.default.configuration = nil
                self.default.baseURL = nil
                self.default.session = nil
                return
            }
            
            self.default.configuration = gNewDefaultConfig
            self.default.baseURL = gNewDefaultConfig.baseURL
            
            let sessionConfig = URLSessionConfiguration.default
            sessionConfig.timeoutIntervalForRequest = gNewDefaultConfig.requestTimeout
            sessionConfig.timeoutIntervalForResource = gNewDefaultConfig.resourceTimeout
            self.default.session = CoreSession(configuration: sessionConfig)
        }
    }
    
    public static let `default` = NetworkCore()
    
    public private(set) var configuration: NetworkCoreConfiguration?
    
    private var session: CoreSession?
    private var baseURL: URL?
    
    public init(config: NetworkCoreConfiguration) {
        self.configuration = config
        
        self.baseURL = config.baseURL
        
        let sessionConfig = URLSessionConfiguration.default
        sessionConfig.timeoutIntervalForRequest = config.requestTimeout
        sessionConfig.timeoutIntervalForResource = config.resourceTimeout
        self.session = CoreSession(configuration: sessionConfig)
    }
    
    private init() {}
    
    
}

