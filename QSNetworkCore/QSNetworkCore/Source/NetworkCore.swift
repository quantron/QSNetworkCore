//
//  NetworkCore.swift
//  QSNetworkCore
//
//  Created by Ivanov Evgeniy on 21/05/2019.
// 

import Foundation
import Alamofire

open class NetworkCore {
    public static var defaultConfiguration: NetworkCoreConfiguration?
    
    public static let `default` = NetworkCore(config: defaultConfiguration)
    
    public let configuration: NetworkCoreConfiguration?
    
    public init(config: NetworkCoreConfiguration) {
        self.configuration = config
    }
    
    private init(config: NetworkCoreConfiguration?) {
        self.configuration = config
    }
}

