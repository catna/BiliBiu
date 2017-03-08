//
//  TNetwork.swift
//  BiliBiu
//
//  Created by MX on 2017/3/8.
//  Copyright © 2017年 mx. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class TNetwork: NSObject {
    struct Response {
        let res: DefaultDataResponse
        var json: JSON? = nil
    }
    
    class func get(url: String, comp: @escaping (Response) -> Void) {
        TNetwork.req(url: url, comp: comp)
    }
    
    class func req(url: String, method: HTTPMethod = .get, parameters: Parameters? = nil, headers: HTTPHeaders? = nil, comp: @escaping (Response) -> Void) {
        Alamofire.request(url, method: method, parameters: parameters, headers: headers).response { (res) in
            var r = Response(res: res, json: nil)
            if let j = res.data {
                r.json = JSON.init(data: j)
            }
            comp(r)
        }
    }
    
    class func test() {
        TNetwork.get(url: "http://ip.taobao.com/service/getIpInfo.php?ip=223.5.5.5") { (res) in
            print(res.json ?? "null")
        }
    }
}
