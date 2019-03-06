//
//  MessageService.swift
//  Smack
//
//  Created by Odhrán Daly on 06/03/2019.
//  Copyright © 2019 Odhrán Daly. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class MessageService{
    
    static let instance = MessageService()
    
    var channels = [Channel]()
    
    func findAllChannel(completion: @escaping CompletionHandler){
        
        Alamofire.request(URL_GET_CHANNELS, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: BEARER_HEADER).responseJSON { (response) in
            
            if response.result.error == nil {
                guard let data = response.data else { return }
                do {
                    if let json = try JSON(data: data).array {
                        for item in json {
                            let name = item["name"].stringValue
                            let channelDescription = item["description"].stringValue
                            let id = item["id"].stringValue
                            let channel = Channel(channelTitle: name, channelDescription: channelDescription, id: id)
                            self.channels.append(channel)
                        }
                    }
                }catch let error{
                    debugPrint(error as Any)
                }
                completion(true)
            }else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
    
    }
}
