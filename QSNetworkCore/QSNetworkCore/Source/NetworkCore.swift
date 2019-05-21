//
//  NetworkCore.swift
//  QSNetworkCore
//
//  Created by Ivanov Evgeniy on 21/05/2019.
//  Copyright © 2019 Quantron Systems. All rights reserved.
//

import Foundation
import Alamofire

open class NetworkCore: NSObject {
    private let session: Session
    
    public init(sessionConfiguration: URLSessionConfiguration) {
        self.session = Session(configuration: sessionConfiguration)
        print("NetworkCore INITED")
    }
}
