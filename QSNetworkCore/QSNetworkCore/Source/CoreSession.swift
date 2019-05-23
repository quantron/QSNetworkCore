//
//  CoreSession.swift
//  CoreSession
//
//  Created by Ivanov Evgeniy on 22/05/2019.
//  

import Foundation
import Alamofire

class CoreSession {
    private let session: Session
    
    init(configuration: URLSessionConfiguration) {
        self.session = Session(configuration: configuration)
        print("NetworkCore INITED")
    }
    
    //func performRequest(toUrl url: URLConvertible, )
}
