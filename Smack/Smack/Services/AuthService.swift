//
//  AuthService.swift
//  Smack
//
//  Created by Odhrán Daly on 25/02/2019.
//  Copyright © 2019 Odhrán Daly. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class AuthService {
    
    static let instance = AuthService()
    
    let defaults = UserDefaults.standard

    
    var isLoggedIn: Bool {
        get{
            return defaults.bool(forKey: LOGGED_IN_KEY)
        }
        set {
            defaults.set(newValue, forKey: LOGGED_IN_KEY)
        }
    }
    
    var authToke: String {
        get{
            return defaults.value(forKey: TOKEN_KEY)as! String
        }
        set{
            defaults.set(newValue, forKey: TOKEN_KEY)
        }
    }
    
    var userEmail: String {
        get{
            return defaults.value(forKey: USER_EMAIL)as! String
        }
        set{
            defaults.set(newValue, forKey: USER_EMAIL)
        }
    }

    
    func registerUser(email: String, password: String, completion: @escaping CompletionHandler){
        
        let lowerCaseEmail = email.lowercased()
        
        
        
        let body : [String: Any] = [
            "email": lowerCaseEmail,
            "password": password
        ]
        
        Alamofire.request(URL_REGISTER, method: .post, parameters: body, encoding: JSONEncoding.default, headers: HEADER).responseString { (response) in
            if response.result.error == nil {
                completion(true)
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
    }
    
    func loginUser(email: String, password: String, completion: @escaping CompletionHandler){
        let lowerCaseEmail = email.lowercased()
        
        
        
        let body : [String: Any] = [
            "email": lowerCaseEmail,
            "password": password
        ]
        
        Alamofire.request(URL_LOGIN, method: .post, parameters: body, encoding: JSONEncoding.default, headers: HEADER).responseJSON { (repsonse) in
            if repsonse.result.error == nil {
                
//                if let json = repsonse.result.value as? Dictionary<String, Any>{
//                    if let email = json["user"] as? String{
//                        self.userEmail = email
//                    }
//
//                    if let token = json["token"]as? String {
//                        self.authToke = token
//                    }
//                }
                
                //Using Swifty JSON
                
                guard let data = repsonse.data else { return }
                do {
                    let json = try JSON(data: data)
                    self.userEmail = json["user"].stringValue
                    self.authToke = json["token"].stringValue
                } catch let error as NSError{
                    print(error)
                }
                
                
                
                self.isLoggedIn = true
                
                completion(true)
            }else {
                completion(false)
                debugPrint(repsonse.result.error as Any)
            }
        }
    }
    
    func createUser(name: String, email: String, avatarName: String, avatarColor: String, compleation: @escaping CompletionHandler){
        
         let lowerCaseEmail = email.lowercased()
        
        let body : [String: Any] = [
            "name": name,
            "email": lowerCaseEmail,
            "avatarName": avatarName,
            "avatarColor": avatarColor
        ]
        
        let header = [
            "Authorization": "Bearer \(AuthService.instance.authToke)",
            "Content-Type": "application/json; charset=utf-8"
        ]
        
        Alamofire.request(URL_USER_ADD, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header).responseJSON { (repsonse) in
            
            if repsonse.result.error == nil {
                
                guard let data = repsonse.data else { return }
                do {
                    let json = try JSON(data: data)
                    let id = json["_id"].stringValue
                    let avatarColor = json["avatarColor"].stringValue
                    let avatarName = json["avatarName"].stringValue
                    let email = json["email"].stringValue
                    let name = json["name"].stringValue
                    
                    UserDataService.instance.setUserData(id: id, color: avatarColor, avatarName: avatarName, email: email, name: name)
                } catch let error as NSError{
                    print(error)
                }
                
                compleation(true)
                
            }else {
                compleation(false)
                debugPrint(repsonse.result.error as Any)
            }
        }
        
    }
}