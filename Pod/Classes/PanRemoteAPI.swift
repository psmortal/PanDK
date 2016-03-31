//
//  PanRemoteAPI.swift
//  Pods
//
//  Created by mortal on 16/3/30.
//
//

import Alamofire


public protocol PanRemoteAPI {
    
    var method:Alamofire.Method {get set}
    var api:String {get set}
    var params:[String:AnyObject]? {get set}
    var encoding:ParameterEncoding{get set}
    var headers:[String:String]?{get set}
    func send(cb:ResultCallBack)
    func handleResult(res: Alamofire.Response<NSData,NSError>,cb:ResultCallBack)
}

public typealias ResultCallBack = ()->Void

extension PanRemoteAPI {
    
    func send(cb:ResultCallBack) {
        Alamofire.request(self.method, self.api, parameters: self.params, encoding: self.encoding, headers: self.headers).responseData { (response) in
            self.handleResult(response,cb: cb)
        }
        
    }
    
    func handleResult(res: Alamofire.Response<NSData,NSError>,cb:ResultCallBack) {
        
    }
}




